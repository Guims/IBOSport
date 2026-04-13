.class public final synthetic LB4/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LB4/s;


# direct methods
.method public synthetic constructor <init>(LB4/s;I)V
    .locals 0

    iput p2, p0, LB4/e;->b:I

    iput-object p1, p0, LB4/e;->q:LB4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget p1, p0, LB4/e;->b:I

    const/4 v0, 0x0

    iget-object v1, p0, LB4/e;->q:LB4/s;

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    iget-object p1, v1, LB4/s;->L0:Lib/player/base/o;

    const/4 p2, 0x1

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_0

    :cond_0
    sget-object p1, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_1

    iget-object p1, v1, LB4/s;->L0:Lib/player/base/o;

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v0, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_1

    :cond_1
    sget-object p1, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    :pswitch_1
    if-eqz p2, :cond_2

    iget-object p1, v1, LB4/s;->L0:Lib/player/base/o;

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v0, p1, Lib/player/pages/MainActivity;->y0:Z

    goto :goto_2

    :cond_2
    sget-object p1, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
