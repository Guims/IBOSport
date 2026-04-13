.class public Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
.super Ljava/lang/Object;


# instance fields
.field private canonicalHostName:Ljava/lang/String;

.field private charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private exceptionCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry<",
            "Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

.field private h2StreamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

.field private final handlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private http1StreamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

.field private httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

.field private ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private lookupRegistry:Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

.field private tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

.field private versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->handlerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->lambda$create$3(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->lambda$register$0(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap()Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;-><init>()V

    return-object v0
.end method

.method public static synthetic c(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->lambda$create$2()Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->lambda$registerVirtual$1(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$create$2()Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->lookupRegistry:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;->URI_PATTERN:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-static {v0}, Lorg/apache/hc/core5/http/protocol/UriPatternType;->newMatcher(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$create$3(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;Lorg/apache/hc/core5/function/Callback;)V

    return-object v0
.end method

.method private static synthetic lambda$register$0(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)V

    return-object v0
.end method

.method private static synthetic lambda$registerVirtual$1(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/nio/support/BasicServerExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)V

    return-object v0
.end method


# virtual methods
.method public final addFilterAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 3

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Filter handler"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->AFTER:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    invoke-direct {v1, v2, p2, p3, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFilterBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 3

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Filter handler"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->BEFORE:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    invoke-direct {v1, v2, p2, p3, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFilterFirst(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 4

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Filter handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->FIRST:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFilterLast(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 4

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Filter handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->LAST:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public create()Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncServer;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->canonicalHostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/apache/hc/core5/net/InetAddressUtils;->getCanonicalLocalHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;

    new-instance v2, Lorg/apache/hc/core5/http/impl/bootstrap/b;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v8, v2}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->handlerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    iget-object v4, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->hostname:Ljava/lang/String;

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->uriPattern:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->handler:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v3}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-direct {v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;-><init>()V

    new-instance v3, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;

    new-instance v4, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;

    invoke-direct {v4, v1}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;)V

    invoke-direct {v3, v4}, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;-><init>(Lorg/apache/hc/core5/http/nio/HandlerFactory;)V

    sget-object v1, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->MAIN_HANDLER:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addLast(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v1, Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;-><init>()V

    sget-object v3, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->EXPECT_CONTINUE:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;

    sget-object v4, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap$1;->$SwitchMap$org$apache$hc$core5$http2$impl$nio$bootstrap$FilterEntry$Position:[I

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->position:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v4, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->MAIN_HANDLER:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_3

    :cond_3
    iget-object v4, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_3

    :cond_4
    iget-object v4, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->replace(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v4, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_3

    :cond_6
    iget-object v4, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addAfter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->getLast()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    const/4 v2, 0x0

    :goto_4
    if-eqz v1, :cond_8

    new-instance v3, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;

    invoke-direct {v3, v4, v2}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;-><init>(Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;)V

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getPrevious()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    move-object v2, v3

    goto :goto_4

    :cond_8
    new-instance v1, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;

    iget-object v3, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;Lorg/apache/hc/core5/function/Callback;)V

    move-object v11, v1

    goto :goto_5

    :cond_9
    new-instance v2, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;

    new-instance v3, LA3/d;

    const/16 v4, 0x1b

    invoke-direct {v3, v4, v0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v3}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;Lorg/apache/hc/core5/function/Decorator;)V

    move-object v11, v2

    :goto_5
    new-instance v3, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v1, :cond_a

    :goto_6
    move-object v10, v1

    goto :goto_7

    :cond_a
    invoke-static {}, Lorg/apache/hc/core5/http2/impl/H2Processors;->server()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v1

    goto :goto_6

    :goto_7
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz v1, :cond_b

    :goto_8
    move-object v12, v1

    goto :goto_9

    :cond_b
    sget-object v1, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    goto :goto_8

    :goto_9
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v1, :cond_c

    :goto_a
    move-object v13, v1

    goto :goto_b

    :cond_c
    sget-object v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_a

    :goto_b
    iget-object v14, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->h2StreamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz v1, :cond_d

    :goto_c
    move-object v5, v1

    goto :goto_d

    :cond_d
    new-instance v1, Lorg/apache/hc/core5/http2/ssl/H2ServerTlsStrategy;

    invoke-direct {v1}, Lorg/apache/hc/core5/http2/ssl/H2ServerTlsStrategy;-><init>()V

    goto :goto_c

    :goto_d
    new-instance v2, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v1, :cond_e

    :goto_e
    move-object v10, v1

    goto :goto_f

    :cond_e
    invoke-static {}, Lorg/apache/hc/core5/http/impl/HttpProcessors;->server()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v1

    goto :goto_e

    :goto_f
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz v1, :cond_f

    :goto_10
    move-object v12, v1

    goto :goto_11

    :cond_f
    sget-object v1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    goto :goto_10

    :goto_11
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v1, :cond_10

    :goto_12
    move-object v13, v1

    goto :goto_13

    :cond_10
    sget-object v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_12

    :goto_13
    sget-object v14, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    sget-object v15, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;

    sget-object v16, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;

    sget-object v17, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->http1StreamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    move-object/from16 v18, v17

    move-object/from16 v19, v1

    move-object v9, v2

    invoke-direct/range {v9 .. v19}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;

    iget-object v4, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz v4, :cond_11

    goto :goto_14

    :cond_11
    sget-object v4, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_14
    iget-object v6, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V

    new-instance v2, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncServer;

    iget-object v4, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    iget-object v5, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iget-object v6, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    iget-object v7, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncServer;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Ljava/lang/String;)V

    return-object v2
.end method

.method public final register(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    const-string v0, "URI pattern"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->handlerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final register(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler<",
            "TT;>;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/a;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lorg/apache/hc/core5/http/impl/bootstrap/a;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->register(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;

    return-object p0
.end method

.method public final registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    const-string v0, "Hostname"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "URI pattern"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->handlerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler<",
            "TT;>;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/a;

    const/4 v1, 0x3

    invoke-direct {v0, p3, v1}, Lorg/apache/hc/core5/http/impl/bootstrap/a;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;I)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;

    return-object p0
.end method

.method public final replaceFilter(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 3

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Filter handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;->REPLACE:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;

    invoke-direct {v1, v2, p1, p2, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setCanonicalHostName(Ljava/lang/String;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->canonicalHostName:Ljava/lang/String;

    return-object p0
.end method

.method public final setCharset(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public final setExceptionCallback(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setH2Config(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public final setHandshakeTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public final setHttp1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setIOReactorConfig(Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    return-object p0
.end method

.method public final setIOSessionDecorator(Lorg/apache/hc/core5/function/Decorator;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    return-object p0
.end method

.method public final setIOSessionListener(Lorg/apache/hc/core5/reactor/IOSessionListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    return-object p0
.end method

.method public final setLookupRegistry(Lorg/apache/hc/core5/http/protocol/LookupRegistry;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->lookupRegistry:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http/impl/Http1StreamListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->http1StreamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->h2StreamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    return-object p0
.end method

.method public final setTlsStrategy(Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method

.method public final setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2ServerBootstrap;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object p0
.end method
