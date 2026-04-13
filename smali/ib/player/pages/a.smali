.class public final synthetic Lib/player/pages/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/MainActivity;


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/MainActivity;I)V
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lib/player/pages/a;->b:I

    iget-object v0, p0, Lib/player/pages/a;->q:Lib/player/pages/MainActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lib/player/pages/MainActivity;->B0:I

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->i0()V

    return-void

    :pswitch_0
    const-string p1, "settings"

    iput-object p1, v0, Lib/player/pages/MainActivity;->g0:Ljava/lang/String;

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->g0()V

    iget-boolean p1, v0, Lib/player/pages/MainActivity;->x0:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->k0()V

    :cond_0
    return-void

    :pswitch_1
    sget p1, Lib/player/pages/MainActivity;->B0:I

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->j0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
