function my_function (msg) {

    const originalString = msg;
    let modifiedString = originalString.toLowerCase().replace(/ /g, '-');

    // Remove apostrophes (') and ( ’)
    modifiedString = modifiedString.replace(/'/g, '');
    modifiedString = modifiedString.replace(/ ’/g, '');

    return modifiedString;
}
module.exports = my_function;