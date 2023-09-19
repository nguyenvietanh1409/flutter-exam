package com.example.demo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "plants")
public class Plant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long plantId;
    private int price;
    private String category;
    @Column(name = "plantName")
    private String plantName;
    private String size;
    private double rating;
    private int humidity;
    private String temperature;
    private String imageURL;
    @Column(name = "isFavorated")
    private boolean isFavorated;
    private String description;
    @Column(name = "isSelected")
    private boolean isSelected;
}
