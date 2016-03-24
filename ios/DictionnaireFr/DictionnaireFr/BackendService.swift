//
//  BackendService.swift
//  DictionnaireFr
//
//  Created by IcaroCamelo on 2016-03-23.
//  Copyright © 2016 IcaroCamelo. All rights reserved.
//

import Foundation

public class BackendService{
    func search(term: String?) -> String? {
        if term == nil {
            return nil;
        }
        return term;
    }

    func httpGet(request: NSURLRequest!, callback: (NSString, NSString?) -> Void)
    {
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request){
            (data, response, error) -> Void in
            if error != nil {
                callback("", error!.localizedDescription)
            } else {
                let result = NSString(data: data!, encoding:
                    NSASCIIStringEncoding)!
                callback(result, nil)
            }
        }
        task.resume()

    }

    func makeRequest(callback: (NSString) ->Void) -> Void {
        let url = "http://www.le-dictionnaire.com/definition.php?mot="
        let request = NSMutableURLRequest(URL: NSURL(string: url)!)

        var result:NSString = ""

        httpGet(request){
            (data, error) ->  Void in

            if error != nil {
                result = error!
            } else {
                result = data
            }
            
            
            callback(data)
        }
        
    }
}