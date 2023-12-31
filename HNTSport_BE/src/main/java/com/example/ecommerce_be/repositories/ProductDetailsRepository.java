package com.example.ecommerce_be.repositories;

import com.example.ecommerce_be.entity.ProductDetails;
import com.example.ecommerce_be.entity.Product_T;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailsRepository extends JpaRepository<ProductDetails, Long> {
    @Query(value="SELECT p.* from product_details p where p.quantify=1",nativeQuery = true)
    List<ProductDetails> getAllProductDetails();


    @Query(value = "SELECT p.* from product_details p where p.product_code =?1 and p.size = ?2 and p.quantify =1",nativeQuery = true)
    ProductDetails getProductBySize(Product_T product,String size);


    @Query(value = "SELECT p.* from product_details p where p.product_code =?1",nativeQuery = true)
    List<ProductDetails> getProductDetailById(Product_T product);
    /*@Modifying
    @Query(value = "update Product p set p.id = ?1 where p.isActive = 1", nativeQuery = true)
    void deleteProductById(Long id);

    @Query(value = "select  p.* from product p \n" +
            "\tleft join color_product cp  on p.id = cp.product_id \n" +
            "\tleft join color c  on c.id  = cp.color_id \n" +
            "\twhere p.is_active =1 \n" +
            "\t\tand (?1 is null or p.price  >= ?1 )\n" +
            "\t\tand (?2 is null or p.price <= ?2)\n" +
            "\t\tand (coalesce (?3) is null or c.name in (?3)) " +
            "group by p.id"
           ,countQuery = "select  count(1) from product p \n" +
            "\tleft join color_product cp  on p.id = cp.product_id \n" +
            "\tleft join color c  on c.id  = cp.color_id \n" +
            "\twhere p.is_active =1 \n" +
            "\t\tand (?1 is null or p.price  >= ?1 )\n" +
            "\t\tand (?2 is null or p.price <= ?2)\n" +
            "\t\tand (coalesce (?3) is null or c.name in (?3)) " +
            "group by p.id",
            nativeQuery = true)
    Page<Product> searchProduct(Long fromPrice,Long toPrice, List<String> colors, Pageable pageable);

     */

}
