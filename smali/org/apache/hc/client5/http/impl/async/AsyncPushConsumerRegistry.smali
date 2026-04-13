.class Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;
.super Ljava/lang/Object;


# instance fields
.field private final hostMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/protocol/UriPatternMatcher<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final primary:Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/protocol/UriPatternMatcher<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->hostMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getPatternMatcher(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/hc/core5/http/protocol/UriPatternMatcher<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->hostMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    return-object p1
.end method


# virtual methods
.method public get(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 4

    const-string v0, "Request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->getPatternMatcher(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/function/Supplier;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "URI pattern"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->primary:Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->hostMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->hostMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    invoke-virtual {v0, p2, p3}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
