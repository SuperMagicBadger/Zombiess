#include "hud.h"
enum {
    CHAT_FONT_SIZE = 24
};
HUD::HUD(Ogre::Viewport *vp) {
    mViewport = vp;
    mSilverback = Gorilla::Silverback::getSingletonPtr();
    mSilverback->loadAtlas("dejavu");
    mHUD = mSilverback->createScreen(mViewport, "dejavu");
    mHUDLayer = mHUD->createLayer();
    chatLayer = mHUD->createLayer();

    Ogre::Real sceneHeight, sceneWidth;
    sceneHeight = mHUD->getHeight();
    sceneWidth = mHUD->getWidth();

    inputChat = chatLayer->createCaption(CHAT_FONT_SIZE, 0, 0, "+ 100");
    inputChat->width(mViewport->getActualWidth() - 16);
    inputChat->height(mViewport->getActualHeight() - 4);
    inputChat->align(Gorilla::TextAlign_Left);
    inputChat->vertical_align(Gorilla::VerticalAlign_Bottom);
    inputChat->text("");
    
    debugMsg = mHUDLayer->createCaption(24, 50, 0, "");
    debugMsg->width(mViewport->getActualWidth() - 16);
    debugMsg->height(mViewport->getActualHeight() - 4);
    debugMsg->align(Gorilla::TextAlign_Left);
    debugMsg->vertical_align(Gorilla::VerticalAlign_Top);

    //Chat Stuff
    this->chatting = false;

    //Bottom Bar
    Gorilla::Rectangle *rect;
    rect = chatLayer->createRectangle(0, sceneHeight - 100, sceneWidth, 100);
    rect->background_gradient(Gorilla::Gradient_Diagonal, Gorilla::rgb(98, 0, 63), Gorilla::rgb(255, 180, 174));
    chatLayer->setVisible(this->chatting);
}
bool HUD::isChatUp() {
    return this->chatting;
}
void HUD::toggleChat() {
    if (this->chatting) this->chatting = false;
    else this->chatting = true;

    chatLayer->setVisible(this->chatting);
}
void HUD::setChatText(Ogre::String s) {
    inputChat->text(s);
}