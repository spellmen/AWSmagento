/**
 * Refer to LICENSE.txt distributed with the Temando Shipping module for notice of license
 */

define([
    'jquery',
    'mageUtils',
    'temandoShippingRatesValidationRules',
    'mage/translate'
], function ($, utils, validationRules, $t) {
    'use strict';

    return {
        validationErrors: [],

        /**
         * @param {Object} address
         * @return {Boolean}
         */
        validate: function (address) {
            var self = this;

            this.validationErrors = [];
            $.each(validationRules.getRules(), function (field, rule) {
                var message;

                if (rule.required && utils.isEmpty(address[field])) {
                    message = $t('Field ') + field + $t(' is required.');
                    self.validationErrors.push(message);
                }
            });

            return !this.validationErrors.length;
        }
    };
});