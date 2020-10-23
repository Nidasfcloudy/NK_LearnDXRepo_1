public with sharing class ContactListController {
    public ContactListController() {
        System.debug('This is constructor');
    }

    @AuraEnabled(cacheable =true)
    public static List<Contact> getContacts(){
        return[Select firstName, lastName from Contact];
    }
}
