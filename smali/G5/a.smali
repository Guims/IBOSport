.class public final LG5/a;
.super Ljava/net/ProxySelector;


# static fields
.field public static final a:LG5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG5/a;

    invoke-direct {v0}, Ljava/net/ProxySelector;-><init>()V

    sput-object v0, LG5/a;->a:LG5/a;

    return-void
.end method


# virtual methods
.method public final connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public final select(Ljava/net/URI;)Ljava/util/List;
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {p1}, Lcom/bumptech/glide/c;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
