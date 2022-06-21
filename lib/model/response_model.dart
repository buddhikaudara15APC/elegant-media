// To parse this JSON data, do
//
//     final responseModel = responseModelFromJson(jsonString);

import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
    ResponseModel({
        this.status,
        this.data,
    });

    final int? status;
    final List<DataResponse>? data;

    factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null ? null : List<DataResponse>.from(json["data"].map((x) => DataResponse.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class DataResponse {
    DataResponse({
        this.id,
        this.title,
        this.description,
        this.address,
        this.postcode,
        this.phoneNumber,
        this.latitude,
        this.longitude,
        this.image,
    });

    final int? id;
    final String? title;
    final String? description;
    final String? address;
    final String? postcode;
    final String? phoneNumber;
    final String? latitude;
    final String? longitude;
    final ImageData? image;

    factory DataResponse.fromJson(Map<String, dynamic> json) => DataResponse(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        address: json["address"] == null ? null : json["address"],
        postcode: json["postcode"] == null ? null : json["postcode"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        image: json["image"] == null ? null : ImageData.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "address": address == null ? null : address,
        "postcode": postcode == null ? null : postcode,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "image": image == null ? null : image!.toJson(),
    };
}

class ImageData {
    ImageData({
        this.small,
        this.medium,
        this.large,
    });

    final String? small;
    final String? medium;
    final String? large;

    factory ImageData.fromJson(Map<String, dynamic> json) => ImageData(
        small: json["small"] == null ? null : json["small"],
        medium: json["medium"] == null ? null : json["medium"],
        large: json["large"] == null ? null : json["large"],
    );

    Map<String, dynamic> toJson() => {
        "small": small == null ? null : small,
        "medium": medium == null ? null : medium,
        "large": large == null ? null : large,
    };
}
