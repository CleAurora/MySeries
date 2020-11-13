//
//    Show.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Show : NSObject, NSCoding{

    var links : Link!
    var externals : External!
    var genres : [String]!
    var id : Int!
    var image : Image!
    var language : String!
    var name : String!
    var network : Network!
    var officialSite : AnyObject!
    var premiered : String!
    var rating : Rating!
    var runtime : Int!
    var schedule : Schedule!
    var status : String!
    var summary : String!
    var type : String!
    var updated : Int!
    var url : String!
    var webChannel : AnyObject!
    var weight : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let linksData = dictionary["_links"] as? [String:Any]{
            links = Link(fromDictionary: linksData)
        }
        if let externalsData = dictionary["externals"] as? [String:Any]{
            externals = External(fromDictionary: externalsData)
        }
        genres = dictionary["genres"] as? [String]
        id = dictionary["id"] as? Int
        if let imageData = dictionary["image"] as? [String:Any]{
            image = Image(fromDictionary: imageData)
        }
        language = dictionary["language"] as? String
        name = dictionary["name"] as? String
        if let networkData = dictionary["network"] as? [String:Any]{
            network = Network(fromDictionary: networkData)
        }
        officialSite = dictionary["officialSite"] as? AnyObject
        premiered = dictionary["premiered"] as? String
        if let ratingData = dictionary["rating"] as? [String:Any]{
            rating = Rating(fromDictionary: ratingData)
        }
        runtime = dictionary["runtime"] as? Int
        if let scheduleData = dictionary["schedule"] as? [String:Any]{
            schedule = Schedule(fromDictionary: scheduleData)
        }
        status = dictionary["status"] as? String
        summary = dictionary["summary"] as? String
        type = dictionary["type"] as? String
        updated = dictionary["updated"] as? Int
        url = dictionary["url"] as? String
        webChannel = dictionary["webChannel"] as? AnyObject
        weight = dictionary["weight"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if links != nil{
            dictionary["_links"] = links.toDictionary()
        }
        if externals != nil{
            dictionary["externals"] = externals.toDictionary()
        }
        if genres != nil{
            dictionary["genres"] = genres
        }
        if id != nil{
            dictionary["id"] = id
        }
        if image != nil{
            dictionary["image"] = image.toDictionary()
        }
        if language != nil{
            dictionary["language"] = language
        }
        if name != nil{
            dictionary["name"] = name
        }
        if network != nil{
            dictionary["network"] = network.toDictionary()
        }
        if officialSite != nil{
            dictionary["officialSite"] = officialSite
        }
        if premiered != nil{
            dictionary["premiered"] = premiered
        }
        if rating != nil{
            dictionary["rating"] = rating.toDictionary()
        }
        if runtime != nil{
            dictionary["runtime"] = runtime
        }
        if schedule != nil{
            dictionary["schedule"] = schedule.toDictionary()
        }
        if status != nil{
            dictionary["status"] = status
        }
        if summary != nil{
            dictionary["summary"] = summary
        }
        if type != nil{
            dictionary["type"] = type
        }
        if updated != nil{
            dictionary["updated"] = updated
        }
        if url != nil{
            dictionary["url"] = url
        }
        if webChannel != nil{
            dictionary["webChannel"] = webChannel
        }
        if weight != nil{
            dictionary["weight"] = weight
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         links = aDecoder.decodeObject(forKey: "_links") as? Link
         externals = aDecoder.decodeObject(forKey: "externals") as? External
         genres = aDecoder.decodeObject(forKey: "genres") as? [String]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? Image
         language = aDecoder.decodeObject(forKey: "language") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         network = aDecoder.decodeObject(forKey: "network") as? Network
         officialSite = aDecoder.decodeObject(forKey: "officialSite") as? AnyObject
         premiered = aDecoder.decodeObject(forKey: "premiered") as? String
         rating = aDecoder.decodeObject(forKey: "rating") as? Rating
         runtime = aDecoder.decodeObject(forKey: "runtime") as? Int
         schedule = aDecoder.decodeObject(forKey: "schedule") as? Schedule
         status = aDecoder.decodeObject(forKey: "status") as? String
         summary = aDecoder.decodeObject(forKey: "summary") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         updated = aDecoder.decodeObject(forKey: "updated") as? Int
         url = aDecoder.decodeObject(forKey: "url") as? String
         webChannel = aDecoder.decodeObject(forKey: "webChannel") as? AnyObject
         weight = aDecoder.decodeObject(forKey: "weight") as? Int

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if links != nil{
            aCoder.encode(links, forKey: "_links")
        }
        if externals != nil{
            aCoder.encode(externals, forKey: "externals")
        }
        if genres != nil{
            aCoder.encode(genres, forKey: "genres")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if image != nil{
            aCoder.encode(image, forKey: "image")
        }
        if language != nil{
            aCoder.encode(language, forKey: "language")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if network != nil{
            aCoder.encode(network, forKey: "network")
        }
        if officialSite != nil{
            aCoder.encode(officialSite, forKey: "officialSite")
        }
        if premiered != nil{
            aCoder.encode(premiered, forKey: "premiered")
        }
        if rating != nil{
            aCoder.encode(rating, forKey: "rating")
        }
        if runtime != nil{
            aCoder.encode(runtime, forKey: "runtime")
        }
        if schedule != nil{
            aCoder.encode(schedule, forKey: "schedule")
        }
        if status != nil{
            aCoder.encode(status, forKey: "status")
        }
        if summary != nil{
            aCoder.encode(summary, forKey: "summary")
        }
        if type != nil{
            aCoder.encode(type, forKey: "type")
        }
        if updated != nil{
            aCoder.encode(updated, forKey: "updated")
        }
        if url != nil{
            aCoder.encode(url, forKey: "url")
        }
        if webChannel != nil{
            aCoder.encode(webChannel, forKey: "webChannel")
        }
        if weight != nil{
            aCoder.encode(weight, forKey: "weight")
        }

    }

}

//
//    Schedule.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Schedule : NSObject, NSCoding{

    var days : [String]!
    var time : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        days = dictionary["days"] as? [String]
        time = dictionary["time"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if days != nil{
            dictionary["days"] = days
        }
        if time != nil{
            dictionary["time"] = time
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         days = aDecoder.decodeObject(forKey: "days") as? [String]
         time = aDecoder.decodeObject(forKey: "time") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if days != nil{
            aCoder.encode(days, forKey: "days")
        }
        if time != nil{
            aCoder.encode(time, forKey: "time")
        }

    }

}

//
//    Rating.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Rating : NSObject, NSCoding{

    var average : Float!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        average = dictionary["average"] as? Float
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if average != nil{
            dictionary["average"] = average
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         average = aDecoder.decodeObject(forKey: "average") as? Float

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if average != nil{
            aCoder.encode(average, forKey: "average")
        }

    }

}

//
//    Network.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Network : NSObject, NSCoding{

    var country : Country!
    var id : Int!
    var name : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let countryData = dictionary["country"] as? [String:Any]{
            country = Country(fromDictionary: countryData)
        }
        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if country != nil{
            dictionary["country"] = country.toDictionary()
        }
        if id != nil{
            dictionary["id"] = id
        }
        if name != nil{
            dictionary["name"] = name
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         country = aDecoder.decodeObject(forKey: "country") as? Country
         id = aDecoder.decodeObject(forKey: "id") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if country != nil{
            aCoder.encode(country, forKey: "country")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }

    }

}

//
//    Country.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Country : NSObject, NSCoding{

    var code : String!
    var name : String!
    var timezone : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        code = dictionary["code"] as? String
        name = dictionary["name"] as? String
        timezone = dictionary["timezone"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if code != nil{
            dictionary["code"] = code
        }
        if name != nil{
            dictionary["name"] = name
        }
        if timezone != nil{
            dictionary["timezone"] = timezone
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         code = aDecoder.decodeObject(forKey: "code") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         timezone = aDecoder.decodeObject(forKey: "timezone") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if code != nil{
            aCoder.encode(code, forKey: "code")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if timezone != nil{
            aCoder.encode(timezone, forKey: "timezone")
        }

    }

}

//
//    Image.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Image : NSObject, NSCoding{

    var medium : String!
    var original : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        medium = dictionary["medium"] as? String
        original = dictionary["original"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if medium != nil{
            dictionary["medium"] = medium
        }
        if original != nil{
            dictionary["original"] = original
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         medium = aDecoder.decodeObject(forKey: "medium") as? String
         original = aDecoder.decodeObject(forKey: "original") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if medium != nil{
            aCoder.encode(medium, forKey: "medium")
        }
        if original != nil{
            aCoder.encode(original, forKey: "original")
        }

    }

}

//
//    External.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class External : NSObject, NSCoding{

    var imdb : String!
    var thetvdb : Int!
    var tvrage : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        imdb = dictionary["imdb"] as? String
        thetvdb = dictionary["thetvdb"] as? Int
        tvrage = dictionary["tvrage"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if imdb != nil{
            dictionary["imdb"] = imdb
        }
        if thetvdb != nil{
            dictionary["thetvdb"] = thetvdb
        }
        if tvrage != nil{
            dictionary["tvrage"] = tvrage
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         imdb = aDecoder.decodeObject(forKey: "imdb") as? String
         thetvdb = aDecoder.decodeObject(forKey: "thetvdb") as? Int
         tvrage = aDecoder.decodeObject(forKey: "tvrage") as? Int

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if imdb != nil{
            aCoder.encode(imdb, forKey: "imdb")
        }
        if thetvdb != nil{
            aCoder.encode(thetvdb, forKey: "thetvdb")
        }
        if tvrage != nil{
            aCoder.encode(tvrage, forKey: "tvrage")
        }

    }

}

//
//    Link.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Link : NSObject, NSCoding{

    var previousepisode : Previousepisode!
    var self_ : Previousepisode!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let previousepisodeData = dictionary["previousepisode"] as? [String:Any]{
            previousepisode = Previousepisode(fromDictionary: previousepisodeData)
        }
        if let selfData = dictionary["self"] as? [String:Any]{
            self_ = Previousepisode(fromDictionary: selfData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if previousepisode != nil{
            dictionary["previousepisode"] = previousepisode.toDictionary()
        }
        if self_ != nil{
            dictionary["self"] = self.toDictionary()
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         previousepisode = aDecoder.decodeObject(forKey: "previousepisode") as? Previousepisode
         self_ = aDecoder.decodeObject(forKey: "self") as? Previousepisode

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if previousepisode != nil{
            aCoder.encode(previousepisode, forKey: "previousepisode")
        }
        if self_ != nil{
            aCoder.encode(self, forKey: "self")
        }

    }

}

//
//    Previousepisode.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Previousepisode : NSObject, NSCoding{

    var href : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        href = dictionary["href"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if href != nil{
            dictionary["href"] = href
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         href = aDecoder.decodeObject(forKey: "href") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if href != nil{
            aCoder.encode(href, forKey: "href")
        }

    }

}
