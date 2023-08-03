//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by 박진성 on 2023/05/02
//
//
import Foundation


/*
 items =     (
             {
         etag = "2b5bmC6sv8RCkf-UdP8tWZMmU7M";
         id =             {
             kind = "youtube#video";
             videoId = xahxMildR0w;
         };
         kind = "youtube#searchResult";
     },
 */
struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}




struct VideoElement: Codable {
    let id: IdVideoElement
}



struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
