.class public Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;
.implements Lorg/apache/hc/core5/pool/ConnPoolControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;",
        "Lorg/apache/hc/core5/pool/ConnPoolControl<",
        "Lorg/apache/hc/client5/http/HttpRoute;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x5

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x19

.field private static final INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

.field private static final LOG:LO5/a;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

.field private final pool:Lorg/apache/hc/core5/pool/ManagedConnPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/TlsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    new-instance v0, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    const-string v1, "ep-"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v1, v1, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-static {}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v1, v1, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;",
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    const-string p1, "Connection pool"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/ManagedConnPool;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "Connection operator"

    invoke-static {p1, v2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    iput-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    sget-object v2, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$4;->$SwitchMap$org$apache$hc$core5$pool$PoolConcurrencyPolicy:[I

    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;->STRICT:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$2;

    const/4 v2, 0x5

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$2;-><init>(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected PoolConcurrencyPolicy value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$1;

    const/16 v3, 0x19

    const/4 v6, 0x0

    const/4 v2, 0x5

    move-object v1, p0

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$1;-><init>(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;IILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    :goto_1
    if-eqz p5, :cond_3

    move-object v0, p5

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;

    :goto_2
    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Registry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;->STRICT:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    sget-object v1, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/client5/http/SchemePortResolver;",
            "Lorg/apache/hc/client5/http/DnsResolver;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    new-instance p2, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;

    invoke-direct {p2, p1, v0, p6}, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    move-object p1, p0

    move-object p6, p7

    invoke-direct/range {p1 .. p6}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lorg/apache/hc/core5/pool/PoolReusePolicy;->LIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->lambda$setDefaultSocketConfig$0(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;)Lorg/apache/hc/core5/pool/ManagedConnPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveValidateAfterInactivity(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;)Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    return-object p0
.end method

.method public static synthetic access$500()Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->lambda$setDefaultConnectionConfig$1(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method private cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;
    .locals 3

    instance-of v0, p1, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected endpoint class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic f(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->lambda$setDefaultTlsConfig$2(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultConnectionConfig$1(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultSocketConfig$0(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultTlsConfig$2(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    return-object p0
.end method

.method private resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/config/ConnectionConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    return-object p1
.end method

.method private resolveSocketConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/io/SocketConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    return-object p1
.end method

.method private resolveTlsConfig(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/config/TlsConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    return-object p1
.end method

.method private resolveValidateAfterInactivity(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Shutdown connection pool {}"

    invoke-interface {v0, p1, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    const-string p1, "Connection pool shut down"

    invoke-interface {v0, p1}, LO5/a;->n(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public closeExpired()V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    const-string v1, "Closing expired connections"

    invoke-interface {v0, v1}, LO5/a;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeExpired()V

    return-void
.end method

.method public closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 2

    const-string v0, "Idle time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Closing connections idle longer than {}"

    invoke-interface {v0, p1, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public closeIfExpired(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getExpiryDeadline()Lorg/apache/hc/core5/util/Deadline;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/hc/core5/util/Deadline;->isBefore(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getTimeToLive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getCreated()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/hc/core5/util/Deadline;->isBefore(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    return-void
.end method

.method public connect(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 11

    const-string v0, "Managed endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/http/io/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/pool/PoolEntry;->assignConnection(Lorg/apache/hc/core5/io/ModalCloseable;)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveSocketConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;

    move-result-object v8

    invoke-direct {p0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v2

    invoke-direct {p0, v5}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveTlsConfig(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v9

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-static {v3, v4, p2}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    :goto_2
    move-object v7, p2

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    goto :goto_2

    :goto_3
    sget-object p2, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v5, v7}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "{} connecting endpoint to {} ({})"

    invoke-interface {p2, v4, v3}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    move-object v10, p3

    invoke-interface/range {v3 .. v10}, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;->connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "{} connected {}"

    invoke-interface {p2, p1, p3, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {v4, p1}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getDefaultSocketConfig()Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    return-object v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->getMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getRoutes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getRoutes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->getStats(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    return-object v0
.end method

.method public lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/Timeout;->DISABLED:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;

    move-result-object p1

    return-object p1
.end method

.method public lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
    .locals 8

    const-string v0, "HTTP route"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-static {p2, p4, v1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, p3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{} endpoint lease request ({}) {}"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p4, p3, v1}, Lorg/apache/hc/core5/pool/ConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v4

    new-instance v2, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;-><init>(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)V

    return-object v2
.end method

.method public release(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 7

    const-string v0, "for "

    const-string v1, "Managed endpoint"

    invoke-static {p1, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->detach()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v2, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "{} releasing endpoint"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    sget-object v4, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v3, v4}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_2
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->isConsistent()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    const-string v6, "{} connection released {}"

    if-eqz v5, :cond_5

    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/hc/core5/pool/PoolEntry;->updateState(Ljava/lang/Object;)V

    invoke-virtual {v1, p3}, Lorg/apache/hc/core5/pool/PoolEntry;->updateExpiry(Lorg/apache/hc/core5/util/TimeValue;)V

    invoke-interface {v3}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->passivate()V

    invoke-interface {v2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p3}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p2

    move v4, v5

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_4

    :cond_4
    const-string p2, "indefinitely"

    :goto_1
    const-string p3, "{} connection {} can be kept alive {}"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p3, p2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-interface {v2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "{} connection is not kept alive"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {p2, v1, v5}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    invoke-interface {v2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-static {p2, p3, v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :goto_4
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :goto_5
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {p3, v1, v4}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    sget-object p3, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {p3}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    throw p2
.end method

.method public setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/c;-><init>(Lorg/apache/hc/client5/http/config/ConnectionConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setDefaultSocketConfig(Lorg/apache/hc/core5/http/io/SocketConfig;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/b;-><init>(Lorg/apache/hc/core5/http/io/SocketConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setDefaultTlsConfig(Lorg/apache/hc/client5/http/config/TlsConfig;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/a;-><init>(Lorg/apache/hc/client5/http/config/TlsConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxTotal(I)V

    return-void
.end method

.method public setSocketConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setTlsConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/TlsConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 3

    const-string v0, "Managed endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->resolveTlsConfig(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-interface {v2, p1, v0, v1, p2}, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
