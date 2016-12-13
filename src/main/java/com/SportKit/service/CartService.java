package com.SportKit.service;

import com.SportKit.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}

