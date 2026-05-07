package com.coleiratech.Coleira.Tech.dtos;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.UUID;

@Data
public class LocalizacaoIotDTO {

    private double latitude;

    private double longitude;

    private LocalDateTime dataHoraGPS;

    private UUID petId;

    private UUID coleiraId;
}