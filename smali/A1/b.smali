.class public final LA1/b;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;


# instance fields
.field public final synthetic a:LV2/a;


# direct methods
.method public constructor <init>(LV2/a;)V
    .locals 0

    iput-object p1, p0, LA1/b;->a:LV2/a;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, LA1/b;->a:LV2/a;

    iget-object v0, v0, LV2/a;->b:LV2/c;

    iget-object v0, v0, LV2/c;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, LC/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, LA1/b;->a:LV2/a;

    iget-object v0, v0, LV2/a;->b:LV2/c;

    iget-object v1, v0, LV2/c;->D:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v0, v0, LV2/c;->H:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {p1, v0}, LC/a;->g(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
