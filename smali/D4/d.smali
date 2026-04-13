.class public final synthetic LD4/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LD4/h;


# direct methods
.method public synthetic constructor <init>(LD4/h;I)V
    .locals 0

    iput p2, p0, LD4/d;->b:I

    iput-object p1, p0, LD4/d;->q:LD4/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, LD4/d;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LD4/d;->q:LD4/h;

    if-eqz p2, :cond_0

    iget-object p1, p1, LD4/h;->w0:Lib/player/base/o;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, LD4/d;->q:LD4/h;

    if-eqz p2, :cond_2

    iget-object p1, p1, LD4/h;->w0:Lib/player/base/o;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, LD4/d;->q:LD4/h;

    if-eqz p2, :cond_4

    iget-object p1, p1, LD4/h;->w0:Lib/player/base/o;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, LD4/d;->q:LD4/h;

    if-eqz p2, :cond_6

    iget-object p1, p1, LD4/h;->w0:Lib/player/base/o;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
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
