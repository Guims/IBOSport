.class public final Lorg/apache/hc/client5/http/impl/RequestCopier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/impl/MessageCopier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/client5/http/impl/MessageCopier<",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/RequestCopier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/RequestCopier;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/RequestCopier;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/RequestCopier;->INSTANCE:Lorg/apache/hc/client5/http/impl/RequestCopier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/apache/hc/core5/http/HttpMessage;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/RequestCopier;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setScheme(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/Header;

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/HeaderGroup;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method
