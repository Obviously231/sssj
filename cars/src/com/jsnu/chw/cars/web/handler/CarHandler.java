package com.jsnu.chw.cars.web.handler;

import com.jsnu.chw.cars.persist.entities.Car;
import com.jsnu.chw.cars.services.impl.CarServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by Obvious on 2015/9/9.
 */
@Controller
public class CarHandler {

    @Autowired
    private CarServiceImpl carService;

    @ModelAttribute
    public void getCar(@RequestParam(value = "id", required = false) Integer id, Map<String, Object> map) {
        if (id != null) {
            map.put("car", carService.get(id));
        } else {
            map.put("car", new Car());
        }
    }

    @RequestMapping(value = "/car", method = RequestMethod.POST)
    public String save(Car car) {
        carService.save(car);
        return "test";
    }

    @RequestMapping(value = "/car", method = RequestMethod.GET)
    public String input() {
        return "car/save";
    }

    @RequestMapping(value = "/cars",method = RequestMethod.GET)
    public String list(Map<String,Object> map) {
        map.put("car", carService.get(1));
        return "test";
    }
//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        binder.setDisallowedFields("carName");
//    }

}
