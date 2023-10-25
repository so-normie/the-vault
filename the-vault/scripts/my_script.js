function my_function (msg) {

    const originalString = msg;    
    let modifiedString = originalString.toLowerCase().replace(/ /g, '-');

    // Replace .md with empty string
    modifiedString = modifiedString.replace(/\.md/g, '');

    // Remove apostrophes (') and ( ’)
    modifiedString = modifiedString.replace(/[' ’]/g, '');

    // Remove periods
    modifiedString = modifiedString.replace(/\./g, '');

    // Replace specific string with another string
    modifiedString = modifiedString.replace(/📚-educational-resources\//g, '📚-educational-resources/name/');

    // Replace specific string with another string
    modifiedString = modifiedString.replace(/the-vault\//g, '');

    // return modifiedString;
    return modifiedString;
}
module.exports = my_function;
