.class public final synthetic Lorg/apache/hc/core5/http/nio/support/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/core5/http/nio/support/a;->a:I

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/a;->b:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/nio/support/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/a;->b:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicResponseConsumer;->a(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/a;->b:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->a(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/a;->b:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncResponseConsumer;->a(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/a;->b:Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->a(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
