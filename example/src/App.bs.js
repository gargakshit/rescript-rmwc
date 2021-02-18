// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Card from "@rmwc/card";
import * as Avatar from "@rmwc/avatar";
import * as Typography from "@rmwc/typography";

function App(Props) {
  return React.createElement("div", {
              style: {
                display: "flex",
                height: "100vh",
                alignItems: "center",
                justifyContent: "center"
              }
            }, React.createElement(Card.Card, {
                  children: null,
                  style: {
                    width: "21rem"
                  }
                }, React.createElement(Card.CardPrimaryAction, {
                      children: null
                    }, React.createElement(Card.CardMedia, {
                          sixteenByNine: true,
                          style: {
                            backgroundImage: "url(https://images.unsplash.com/photo-1611332744415-7c20ecb34c11?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixlib=rb-1.2.1&q=80&w=1920)"
                          }
                        }), React.createElement("div", {
                          style: {
                            padding: "0 1rem 1rem 1rem"
                          }
                        }, React.createElement(Typography.Typography, {
                              children: "Lorem Ipsum",
                              use: "headline6",
                              tag: "h2"
                            }), React.createElement(Typography.Typography, {
                              children: "By John Doe",
                              use: "subtitle2",
                              style: {
                                marginTop: "-1rem"
                              },
                              tag: "h3",
                              theme: "textSecondaryOnBackground"
                            }), React.createElement(Typography.Typography, {
                              children: "Visit ten places on our planet that are undergoing the biggest changes today.",
                              use: "body1",
                              tag: "div",
                              theme: "textSecondaryOnBackground"
                            }))), React.createElement(Card.CardActions, {
                      children: React.createElement(Card.CardActionButtons, {
                            children: null
                          }, React.createElement(Card.CardActionButton, {
                                children: "Read"
                              }), React.createElement(Card.CardActionButton, {
                                children: "Bookmark"
                              }))
                    })), React.createElement(Card.Card, {
                  children: React.createElement(Card.CardPrimaryAction, {
                        children: React.createElement("div", {
                              style: {
                                padding: "0.5rem 1rem"
                              }
                            }, React.createElement(Avatar.AvatarGroup, {
                                  children: null,
                                  dense: true
                                }, React.createElement(Avatar.Avatar, {
                                      interactive: true,
                                      name: "Jane Doe",
                                      size: "large",
                                      src: "https://images.unsplash.com/photo-1613521527519-4a3b26610e8f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
                                    }), React.createElement(Avatar.Avatar, {
                                      interactive: true,
                                      name: "John Doe",
                                      size: "large",
                                      src: "https://images.unsplash.com/photo-1613553242301-529fe5529bf7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
                                    }), React.createElement(Avatar.Avatar, {
                                      interactive: true,
                                      name: "Bob",
                                      size: "large",
                                      src: "https://images.unsplash.com/photo-1613508603136-79e2c4a80ffe?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
                                    }), React.createElement(Avatar.AvatarCount, {
                                      interactive: true,
                                      overflow: true,
                                      size: "large",
                                      value: 4
                                    })))
                      }),
                  outlined: true,
                  style: {
                    marginLeft: "2rem"
                  }
                }));
}

var make = App;

export {
  make ,
  
}
/* react Not a pure module */
