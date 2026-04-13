.class public final Lib/player/pages/c;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/m;


# instance fields
.field public final synthetic b:Lib/player/pages/MainActivity;


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/MainActivity;)V
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lib/player/pages/c;->b:Lib/player/pages/MainActivity;

    iget-object v0, v0, Lib/player/pages/MainActivity;->q0:Landroid/widget/ImageView;

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    sget v0, Lib/player/pages/MainActivity;->B0:I

    iget-object v0, p0, Lib/player/pages/c;->b:Lib/player/pages/MainActivity;

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->b0()V

    return-void
.end method
