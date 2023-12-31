package com.example.ecommerce_be.controller;

import com.example.ecommerce_be.base.BaseResponse;
import com.example.ecommerce_be.constants.StatusCode;
import com.example.ecommerce_be.dto.Product_DTO;
import com.example.ecommerce_be.entity.Category;
import com.example.ecommerce_be.service.Product_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "api/productT")
public class Product_Controller {
    @Autowired
    private Product_Service productService;

   /* @PostMapping("/searchT")
    public  ResponseEntity searchProduct(@RequestBody ProductPayloadSearch payloadSearch, Pageable pageable){
        return ResponseEntity.ok(new BaseResponse(productService.searchProduct(payloadSearch,pageable),"Thành công", StatusCode.SUCCESS));
    }*/

    @PostMapping("/addProductT")
    @ResponseBody
    ResponseEntity addNewProduct(@RequestBody Product_DTO productDTO){
        return ResponseEntity.ok(new BaseResponse(productService.addNewProduct(productDTO),"Thêm mới sản phẩm thành công",StatusCode.SUCCESS));
    }
    @GetMapping("/getAllProducts")
    public ResponseEntity getAllProduct() {
        return ResponseEntity.ok(new BaseResponse(productService.getListProducts(),"Thành công", StatusCode.SUCCESS));
    }
    //Tìm bằng mã sản phẩm
    @GetMapping("/getProductById/{id}")
    ResponseEntity getProductById(@PathVariable(name="id") Long id){
        return ResponseEntity.ok(new BaseResponse(productService.getProductById(id),"Thành công",StatusCode.SUCCESS));
    }
    //Tìm bằng tên
    @GetMapping("/getProductByName/{name}")
    ResponseEntity getProductByName(@PathVariable(name="name") String name){
        return ResponseEntity.ok(new BaseResponse(productService.getProductByName(name),"Thành công",StatusCode.SUCCESS));
    }
    @GetMapping("/getProductByCategory/{category}")
    ResponseEntity getProductByCategory(@PathVariable(name="category") Category category){
        return ResponseEntity.ok(new BaseResponse(productService.getListProductByCategory(category),"Thành công",StatusCode.SUCCESS));
    }

    /*@PutMapping("/updateProductT")
    @ResponseBody
    ResponseEntity updateProduct(@RequestBody ProductDTO productDTO){
        return ResponseEntity.ok(new BaseResponse(productService.updateProduct(productDTO),"Cập nhật sản phẩm thành công",StatusCode.SUCCESS));
    }

    @DeleteMapping("/deleteProductT/{id}")
    ResponseEntity deleteProduct(@PathVariable(name = "id") Long id){
        productService.deleteProduct(id);
        return  ResponseEntity.ok(new BaseResponse(null,"Xóa sản phẩm thành công",StatusCode.SUCCESS));
    }


    @GetMapping("/getByIdT/{id}")
    ResponseEntity getProductById(@PathVariable(name="id") Long id){
        return ResponseEntity.ok(new BaseResponse(productService.getProductById(id),"Thành công",StatusCode.SUCCESS));
    }*/
}
