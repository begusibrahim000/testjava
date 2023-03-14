import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;

@Controller
public class ConsumerController {

    @Autowired
    private ConsumerRepository consumerRepository;

    @GetMapping("/")
    public String index(Model model, @RequestParam(required = false) String searchName,
                        @RequestParam(required = false) String searchCity,
                        @RequestParam(required = false) String searchProvince) {
        List<Consumer> consumers;
        if (searchName != null && searchCity != null && searchProvince != null) {
            consumers = consumerRepository.findByNameContainingAndCityContainingAndProvinceContaining(
                    searchName, searchCity, searchProvince);
        } else {
            consumers = consumerRepository.findAll();
        }
        model.addAttribute("consumers", consumers);
        return "index";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("consumer", new Consumer());
        return "add-form";
    }

    @PostMapping("/add")
    public String addSubmit(@Valid Consumer consumer, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "add-form";
        }
        consumerRepository.save(consumer);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String editForm(@PathVariable("id") Long id, Model model) {
        Consumer consumer = consumerRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid consumer ID"));
        model.addAttribute("consumer", consumer);
        return "edit-form";
    }

    @PostMapping("/edit/{id}")
    public String editSubmit(@PathVariable("id") Long id, @Valid Consumer consumer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "edit-form";
        }
        consumer.setId(id);
        consumerRepository.save(consumer);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteForm(@PathVariable("id") Long id, Model model) {
        Consumer consumer = consumerRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid consumer ID"));
        model.addAttribute("consumer", consumer);
        return "delete-form";
    }

    @PostMapping("/delete/{id}")
    public String deleteSubmit(@PathVariable("id") Long id) {
        consumerRepository.deleteById(id);
        return "redirect:/";
    }
}
