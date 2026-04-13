.class public Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequestMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/HttpRequestMapper<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final IP_127_0_0_1:Ljava/lang/String; = "127.0.0.1"

.field private static final LOCALHOST:Ljava/lang/String; = "localhost"


# instance fields
.field private final canonicalHostName:Ljava/lang/String;

.field private final primary:Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final registrySupplier:Lorg/apache/hc/core5/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final virtualMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "localhost"

    sget-object v1, Lorg/apache/hc/core5/http/protocol/UriPatternType;->URI_PATTERN:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-direct {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/UriPatternType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Canonical hostname"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->canonicalHostName:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/hc/core5/http/protocol/a;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->registrySupplier:Lorg/apache/hc/core5/function/Supplier;

    invoke-interface {p2}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    iput-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->virtualMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/UriPatternType;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/UriPatternType;)V
    .locals 1

    const-string v0, "localhost"

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/UriPatternType;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->lambda$new$0(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object p0

    return-object p0
.end method

.method private getPatternMatcher(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->canonicalHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "127.0.0.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->virtualMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    return-object p1
.end method

.method private static synthetic lambda$new$0(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/protocol/UriPatternType;->newMatcher(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "URI pattern"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->canonicalHostName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "localhost"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->virtualMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->registrySupplier:Lorg/apache/hc/core5/function/Supplier;

    invoke-interface {p1}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    iget-object v1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->virtualMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/hc/core5/http/protocol/LookupRegistry;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    invoke-interface {p1, p2, p3}, Lorg/apache/hc/core5/http/protocol/LookupRegistry;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public resolve(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->getPatternMatcher(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/protocol/LookupRegistry;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/MisdirectedRequestException;

    const-string p2, "Not authoritative"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/MisdirectedRequestException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
