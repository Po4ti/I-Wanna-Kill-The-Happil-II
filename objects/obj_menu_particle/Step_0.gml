///Decrease scale

image_xscale -= 1/150;
image_yscale = image_xscale;

if(image_xscale <= 0)
{
    instance_destroy();
}