.class public Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;
.implements Lorg/apache/hc/core5/pool/ConnPoolControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;",
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

.field private final connectionOperator:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

.field private final pool:Lorg/apache/hc/core5/pool/ManagedConnPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
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

    const-class v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

    new-instance v0, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    const-string v1, "ep-"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/URIScheme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;->getDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 7
    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "Connection operator"

    invoke-static {p1, v2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

    iput-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

    sget-object v2, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$6;->$SwitchMap$org$apache$hc$core5$pool$PoolConcurrencyPolicy:[I

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

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;

    const/4 v2, 0x5

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$2;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

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
    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;

    const/16 v3, 0x19

    const/4 v6, 0x0

    const/4 v2, 0x5

    move-object v1, p0

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;IILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;->STRICT:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    sget-object v1, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/client5/http/SchemePortResolver;",
            "Lorg/apache/hc/client5/http/DnsResolver;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;

    invoke-direct {v0, p1, p5, p6}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ">;",
            "Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/core5/pool/PoolReusePolicy;->LIFO:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;",
            "Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection operator"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

    const-string p2, "Connection pool"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/ManagedConnPool;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->lambda$setDefaultTlsConfig$1(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;)Lorg/apache/hc/core5/pool/ManagedConnPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    return-object p0
.end method

.method public static synthetic access$300()Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->lambda$setDefaultConnectionConfig$0(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method private cast(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;
    .locals 3

    instance-of v0, p1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

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

.method private static synthetic lambda$setDefaultConnectionConfig$0(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultTlsConfig$1(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    return-object p0
.end method

.method private resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

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

.method private resolveTlsConfig(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 1

    instance-of v0, p2, Lorg/apache/hc/client5/http/config/TlsConfig;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/hc/client5/http/config/TlsConfig;

    return-object p2

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/config/TlsConfig;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Shutdown connection pool {}"

    invoke-interface {v0, p1, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    const-string p1, "Connection pool shut down"

    invoke-interface {v0, p1}, LO5/a;->n(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public closeExpired()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeExpired()V

    return-void
.end method

.method public closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

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
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
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

    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

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

.method public connect(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;"
        }
    .end annotation

    const-string v0, "Endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection initiator"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->cast(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    move-result-object v7

    new-instance v6, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-virtual {v7}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-object v6

    :cond_0
    invoke-virtual {v7}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v10

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->resolveConnectionConfig(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v4

    move-object/from16 v1, p4

    invoke-direct {p0, v9, v1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->resolveTlsConfig(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v1

    if-eqz p3, :cond_2

    move-object/from16 v11, p3

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v3

    move-object v11, v3

    :goto_2
    sget-object v3, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12, v9, v11}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "{} connecting endpoint to {} ({})"

    invoke-interface {v3, v13, v12}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v12, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lorg/apache/hc/client5/http/config/TlsConfig;->copy(Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->FORCE_HTTP_1:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->build()Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v1

    :cond_4
    move-object v13, v1

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/pool/PoolEntry;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;)V

    move-object v7, v3

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v1, v12

    move-object v8, v0

    move-object v0, v6

    move-object v6, v13

    invoke-interface/range {v1 .. v8}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->getMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getRoutes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->getStats(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

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

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-static {p2, p3, v1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, p4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{} endpoint lease request ({}) {}"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    move-object v4, p0

    move-object v9, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object v6, p5

    invoke-direct/range {v3 .. v9}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/concurrent/FutureCallback;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/String;)V

    return-object v3
.end method

.method public release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 7

    const-string v0, "for "

    const-string v1, "Managed endpoint"

    invoke-static {p1, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Keep-alive time"

    invoke-static {p3, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->cast(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->detach()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v2, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

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

    check-cast v3, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    const-string v6, "{} connection released {}"

    if-eqz v5, :cond_5

    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/hc/core5/pool/PoolEntry;->updateState(Ljava/lang/Object;)V

    invoke-virtual {v1, p3}, Lorg/apache/hc/core5/pool/PoolEntry;->updateExpiry(Lorg/apache/hc/core5/util/TimeValue;)V

    invoke-interface {v3}, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;->passivate()V

    invoke-interface {v2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p3}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p2

    move v4, v5

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_3
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
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_2
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :goto_3
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {p3, v1, v4}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    sget-object p3, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->LOG:LO5/a;

    invoke-interface {p3}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    throw p2

    :cond_5
    :goto_4
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {p2, v1, v5}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    invoke-interface {v2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-static {p2, p3, v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void
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

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/nio/a;-><init>(Lorg/apache/hc/client5/http/config/ConnectionConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setDefaultTlsConfig(Lorg/apache/hc/client5/http/config/TlsConfig;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/nio/b;-><init>(Lorg/apache/hc/client5/http/config/TlsConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->setMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/hc/client5/http/HttpRoute;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->pool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxTotal(I)V

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

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

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

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Managed endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->cast(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2, p2}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->resolveTlsConfig(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v2

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v9

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    new-instance v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;

    move-object v5, p4

    move-object v2, p0

    move-object v7, p1

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    move-object v10, v1

    move-object v5, v8

    move-object v7, v9

    move-object v8, p2

    move-object v9, v6

    move-object v6, v0

    invoke-interface/range {v5 .. v10}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method
