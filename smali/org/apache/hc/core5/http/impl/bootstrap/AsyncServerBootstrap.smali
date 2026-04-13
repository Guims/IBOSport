.class public Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
.super Ljava/lang/Object;


# instance fields
.field private canonicalHostName:Ljava/lang/String;

.field private charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private connStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

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
            "Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry<",
            "Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

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

.field private streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

.field private tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->handlerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->lambda$register$0(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->lambda$registerVirtual$1(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap()Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;-><init>()V

    return-object v0
.end method

.method public static synthetic c(Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->lambda$create$3(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->lambda$create$2()Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$create$2()Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->lookupRegistry:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

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

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

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
.method public final addFilterAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 3

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Filter handler"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;->AFTER:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    invoke-direct {v1, v2, p2, p3, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFilterBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 3

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Filter handler"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;->BEFORE:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    invoke-direct {v1, v2, p2, p3, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFilterFirst(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 4

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Filter handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;->FIRST:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFilterLast(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 4

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Filter handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;->LAST:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public create()Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncServer;
    .locals 15

    new-instance v0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->canonicalHostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/core5/net/InetAddressUtils;->getCanonicalLocalHostName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lorg/apache/hc/core5/http/impl/bootstrap/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lorg/apache/hc/core5/http/impl/bootstrap/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->handlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;

    iget-object v3, v2, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;->hostname:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;->uriPattern:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;->handler:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v2}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;-><init>()V

    new-instance v2, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;

    new-instance v3, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;

    invoke-direct {v3, v0}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;)V

    invoke-direct {v2, v3}, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;-><init>(Lorg/apache/hc/core5/http/nio/HandlerFactory;)V

    sget-object v0, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->MAIN_HANDLER:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addLast(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;-><init>()V

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->EXPECT_CONTINUE:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;

    sget-object v3, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap$1;->$SwitchMap$org$apache$hc$core5$http$impl$bootstrap$FilterEntry$Position:[I

    iget-object v4, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->position:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;->MAIN_HANDLER:Lorg/apache/hc/core5/http/impl/bootstrap/StandardFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v2, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v2, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->replace(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v3, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v2, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->existing:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->filterHandler:Ljava/lang/Object;

    iget-object v2, v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addAfter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->getLast()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_8

    new-instance v2, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;

    invoke-direct {v2, v3, v1}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;-><init>(Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getPrevious()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v0

    move-object v1, v2

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;Lorg/apache/hc/core5/function/Callback;)V

    move-object v6, v0

    goto :goto_4

    :cond_9
    new-instance v1, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;

    new-instance v2, LA3/d;

    const/16 v3, 0x17

    invoke-direct {v2, v3, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;Lorg/apache/hc/core5/function/Decorator;)V

    move-object v6, v1

    :goto_4
    new-instance v4, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v0, :cond_a

    :goto_5
    move-object v5, v0

    goto :goto_6

    :cond_a
    invoke-static {}, Lorg/apache/hc/core5/http/impl/HttpProcessors;->server()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v0

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz v0, :cond_b

    :goto_7
    move-object v7, v0

    goto :goto_8

    :cond_b
    sget-object v0, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    goto :goto_7

    :goto_8
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v0, :cond_c

    :goto_9
    move-object v8, v0

    goto :goto_a

    :cond_c
    sget-object v0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_9

    :goto_a
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->connStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    if-eqz v0, :cond_d

    :goto_b
    move-object v9, v0

    goto :goto_c

    :cond_d
    sget-object v0, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    goto :goto_b

    :goto_c
    sget-object v10, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestParserFactory;

    sget-object v11, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;

    sget-object v12, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    iget-object v14, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    move-object v13, v12

    invoke-direct/range {v4 .. v14}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    new-instance v6, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-direct {v6, v4, v0, v1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V

    new-instance v5, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncServer;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iget-object v9, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    iget-object v10, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncServer;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;)V

    return-object v5
.end method

.method public final register(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    const-string v0, "URI pattern"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->handlerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final register(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler<",
            "TT;>;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/hc/core5/http/impl/bootstrap/a;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->register(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;

    return-object p0
.end method

.method public final registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    const-string v0, "Hostname"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "URI pattern"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->handlerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
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
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/a;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lorg/apache/hc/core5/http/impl/bootstrap/a;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;I)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;

    return-object p0
.end method

.method public final replaceFilter(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 3

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Filter handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->filters:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;->REPLACE:Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;

    invoke-direct {v1, v2, p1, p2, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/FilterEntry$Position;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setCanonicalHostName(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->canonicalHostName:Ljava/lang/String;

    return-object p0
.end method

.method public final setCharCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->connStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setExceptionCallback(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setHttp1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setIOReactorConfig(Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    return-object p0
.end method

.method public final setIOSessionDecorator(Lorg/apache/hc/core5/function/Decorator;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    return-object p0
.end method

.method public final setIOSessionListener(Lorg/apache/hc/core5/reactor/IOSessionListener;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    return-object p0
.end method

.method public final setLookupRegistry(Lorg/apache/hc/core5/http/protocol/LookupRegistry;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->lookupRegistry:Lorg/apache/hc/core5/http/protocol/LookupRegistry;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http/impl/Http1StreamListener;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-object p0
.end method

.method public final setTlsHandshakeTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public final setTlsStrategy(Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServerBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method
