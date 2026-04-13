.class public final synthetic LM5/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/util/concurrent/Future;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Future;I)V
    .locals 0

    iput p2, p0, LM5/b;->b:I

    iput-object p1, p0, LM5/b;->q:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    iget v0, p0, LM5/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM5/b;->q:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->c(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LM5/b;->q:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/Operations;->a(Ljava/util/concurrent/Future;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
