// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_decimal_to_euro(decimal_number) {
    // Convert the decimal number to a string
    num_str = string(decimal_number);

    // Split the string into integer and decimal parts (if any)
    var parts = string_split(num_str, ".");
    var integer_part = parts[0];
    var decimal_part = (array_length_1d(parts) > 1) ? parts[1] : "";

    // Add a dot every 3 digits in the integer part
    var formatted_integer = "";
    for (var i = 0; i < string_length(integer_part); i++) {
        var digit = string_char_at(integer_part, i);
        if (i > 0 && i mod 3 == 0) {
            formatted_integer += ".";
        }
        formatted_integer += digit;
    }

    // Reverse the formatted integer part
    var reversed_string = "";
    var string_len = string_length(formatted_integer);

    for (var i = string_len - 1; i >= 0; i--) {
        reversed_string += string_char_at(formatted_integer, i);
    }
	
	 formatted_integer = reversed_string

    // Combine the formatted integer and decimal parts (if any)
    var formatted_number = formatted_integer + ((decimal_part != "") ? "."+ decimal_part : "");

    // Add the Euro sign
    formatted_number = "€ " + formatted_number;

    return formatted_number;
}
