.class public final synthetic Lorg/apache/hc/client5/http/impl/nio/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/hc/core5/pool/ManagedConnPool;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/pool/ManagedConnPool;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/client5/http/impl/nio/c;->a:I

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/c;->b:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/nio/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/c;->b:Lorg/apache/hc/core5/pool/ManagedConnPool;

    check-cast v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;->f(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/c;->b:Lorg/apache/hc/core5/pool/ManagedConnPool;

    check-cast v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;->f(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
