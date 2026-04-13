.class public final synthetic Lib/player/pages/series/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/h;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/h;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/b;->b:I

    iput-object p1, p0, Lib/player/pages/series/b;->q:Lib/player/pages/series/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Lib/player/pages/series/b;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lib/player/pages/series/b;->q:Lib/player/pages/series/h;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    const/4 p2, 0x0

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lib/player/pages/series/b;->q:Lib/player/pages/series/h;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lib/player/pages/series/b;->q:Lib/player/pages/series/h;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, Lib/player/pages/series/b;->q:Lib/player/pages/series/h;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    const/4 p2, 0x0

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
