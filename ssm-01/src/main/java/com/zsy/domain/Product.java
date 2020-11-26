package com.zsy.domain;

import java.util.Date;

public class Product {
    private Integer id;
    private Integer productCategoryId;
    private String name;
    private String tags;
    private String imageUrl;
    private String imageBig;
    private Float price;
    private Integer stock;
    private Integer sellNum;
    private Integer viewNum;
    private Integer commentNum;
    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(Integer productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUri) {
        this.imageUrl = imageUri;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getSellNum() {
        return sellNum;
    }

    public void setSellNum(Integer sellNum) {
        this.sellNum = sellNum;
    }

    public Integer getViewNum() {
        return viewNum;
    }

    public void setViewNum(Integer viewNum) {
        this.viewNum = viewNum;
    }

    public Integer getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Integer commentNum) {
        this.commentNum = commentNum;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getImageBig() {
        return imageBig;
    }

    public void setImageBig(String imageBig) {
        this.imageBig = imageBig;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", productCategoryId=" + productCategoryId +
                ", name='" + name + '\'' +
                ", tags='" + tags + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", imageBig='" + imageBig + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", sellNum=" + sellNum +
                ", viewNum=" + viewNum +
                ", commentNum=" + commentNum +
                ", createTime=" + createTime +
                '}';
    }
}
