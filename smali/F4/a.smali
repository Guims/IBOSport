.class public final synthetic LF4/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LF4/e;


# direct methods
.method public synthetic constructor <init>(LF4/e;I)V
    .locals 0

    iput p2, p0, LF4/a;->b:I

    iput-object p1, p0, LF4/a;->q:LF4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, LF4/a;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LF4/a;->q:LF4/e;

    if-eqz p2, :cond_0

    iget-object p1, p1, LF4/e;->u0:Lib/player/base/o;

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, LF4/a;->q:LF4/e;

    if-eqz p2, :cond_1

    iget-object p1, p1, LF4/e;->u0:Lib/player/base/o;

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
