.class public final synthetic LE1/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LE1/r;->a:I

    iput-object p2, p0, LE1/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LE1/r;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE1/r;->b:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/a;

    check-cast p1, LE1/f;

    invoke-virtual {v0, p1}, Lib/player/base/helper/a;->a(LE1/f;)V

    return-void

    :pswitch_0
    check-cast p1, LE1/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LE1/r;->b:Ljava/lang/Object;

    check-cast v1, Lib/player/base/helper/a;

    invoke-virtual {v1, p1, v0}, Lib/player/base/helper/a;->b(LE1/f;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
