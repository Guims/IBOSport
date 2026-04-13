.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;
.super Lorg/apache/hc/core5/pool/LaxConnPool;


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
        "Lorg/apache/hc/core5/pool/LaxConnPool<",
        "Lorg/apache/hc/client5/http/HttpRoute;",
        "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/hc/core5/pool/LaxConnPool;-><init>(ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;->lambda$closeExpired$0(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method

.method private synthetic lambda$closeExpired$0(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->closeIfExpired(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method


# virtual methods
.method public closeExpired()V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/hc/client5/http/impl/nio/c;-><init>(Lorg/apache/hc/core5/pool/ManagedConnPool;I)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/pool/LaxConnPool;->enumAvailable(Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method
