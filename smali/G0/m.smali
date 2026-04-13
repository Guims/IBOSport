.class public final synthetic LG0/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LG0/J;


# direct methods
.method public synthetic constructor <init>(LG0/o;LG0/J;I)V
    .locals 0

    iput p3, p0, LG0/m;->b:I

    iput-object p2, p0, LG0/m;->q:LG0/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LG0/o;LG0/J;Landroidx/media3/common/VideoSize;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, LG0/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG0/m;->q:LG0/J;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LG0/m;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG0/m;->q:LG0/J;

    invoke-interface {v0}, LG0/J;->h()V

    return-void

    :pswitch_0
    iget-object v0, p0, LG0/m;->q:LG0/J;

    invoke-interface {v0}, LG0/J;->c()V

    return-void

    :pswitch_1
    iget-object v0, p0, LG0/m;->q:LG0/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
