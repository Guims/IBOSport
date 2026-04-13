.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;
.super Lorg/apache/hc/core5/pool/StrictConnPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/pool/StrictConnPool<",
        "Lorg/apache/hc/client5/http/HttpRoute;",
        "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;IILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/apache/hc/core5/pool/StrictConnPool;-><init>(IILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;->lambda$closeExpired$0(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method

.method private synthetic lambda$closeExpired$0(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->closeIfExpired(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method


# virtual methods
.method public closeExpired()V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/hc/client5/http/impl/nio/c;-><init>(Lorg/apache/hc/core5/pool/ManagedConnPool;I)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/pool/StrictConnPool;->enumAvailable(Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method
