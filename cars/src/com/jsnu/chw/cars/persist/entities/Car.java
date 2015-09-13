package com.jsnu.chw.cars.persist.entities;

import javax.persistence.*;

/**
 * Created by Obvious on 2015/9/9.
 */
@Table(name = "CAR")
@Entity
public class Car {

    //id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Integer id;
    //����
    private String carName;
    //Ʒ��
    @JoinColumn(name = "BRAND_ID")
    @ManyToOne
    private Brand brand;
    //������
    private String transmission;
    //����
    private float length;
    //���
    private float width;
    //�߶�
    private float height;
    //���
    private float wheelBase;
    //����ṹ
    private String structure;
    //����
    private float displacement;
    //������ʽ
    private String airInletForm;
    //�������
    private float maxHorsePower;
    //���Ť��
    private float maxTorque;
    //�����
    private float maxCapacity;
    //�����ת��
    private String maxPowerSpeed;
    //���Ť��ת��
    private String maxTorqueSpeed;
    //���ͷ�ʽ
    private String supplyMode;
    //������ʽ
    private String drivingMode;
    //ǰ����
    private String frontSuspension;
    //������
    private String rearSuspension;
    //��������
    private String assistanceType;
    //��̥���
    private String tireSize;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public float getLength() {
        return length;
    }

    public void setLength(float length) {
        this.length = length;
    }

    public float getWidth() {
        return width;
    }

    public void setWidth(float width) {
        this.width = width;
    }

    public float getHeight() {
        return height;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public float getWheelBase() {
        return wheelBase;
    }

    public void setWheelBase(float wheelBase) {
        this.wheelBase = wheelBase;
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public float getDisplacement() {
        return displacement;
    }

    public void setDisplacement(float displacement) {
        this.displacement = displacement;
    }

    public String getAirInletForm() {
        return airInletForm;
    }

    public void setAirInletForm(String airInletForm) {
        this.airInletForm = airInletForm;
    }

    public float getMaxHorsePower() {
        return maxHorsePower;
    }

    public void setMaxHorsePower(float maxHorsePower) {
        this.maxHorsePower = maxHorsePower;
    }

    public float getMaxTorque() {
        return maxTorque;
    }

    public void setMaxTorque(float maxTorque) {
        this.maxTorque = maxTorque;
    }

    public float getMaxCapacity() {
        return maxCapacity;
    }

    public void setMaxCapacity(float maxCapacity) {
        this.maxCapacity = maxCapacity;
    }

    public String getMaxPowerSpeed() {
        return maxPowerSpeed;
    }

    public void setMaxPowerSpeed(String maxPowerSpeed) {
        this.maxPowerSpeed = maxPowerSpeed;
    }

    public String getMaxTorqueSpeed() {
        return maxTorqueSpeed;
    }

    public void setMaxTorqueSpeed(String maxTorqueSpeed) {
        this.maxTorqueSpeed = maxTorqueSpeed;
    }

    public String getSupplyMode() {
        return supplyMode;
    }

    public void setSupplyMode(String supplyMode) {
        this.supplyMode = supplyMode;
    }

    public String getDrivingMode() {
        return drivingMode;
    }

    public void setDrivingMode(String drivingMode) {
        this.drivingMode = drivingMode;
    }

    public String getFrontSuspension() {
        return frontSuspension;
    }

    public void setFrontSuspension(String frontSuspension) {
        this.frontSuspension = frontSuspension;
    }

    public String getRearSuspension() {
        return rearSuspension;
    }

    public void setRearSuspension(String rearSuspension) {
        this.rearSuspension = rearSuspension;
    }

    public String getAssistanceType() {
        return assistanceType;
    }

    public void setAssistanceType(String assistanceType) {
        this.assistanceType = assistanceType;
    }

    public String getTireSize() {
        return tireSize;
    }

    public void setTireSize(String tireSize) {
        this.tireSize = tireSize;
    }

    public Car(Integer id,String carName) {
        this.id = id;
        this.carName = carName;
    }

    public Car() {
    }
}
