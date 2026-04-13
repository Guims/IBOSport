.class public final Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/impl/MessageCopier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/client5/http/impl/MessageCopier<",
        "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;->INSTANCE:Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/ClassicHttpRequest;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

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

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/Header;

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/http/message/HeaderGroup;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-object v1
.end method

.method public bridge synthetic copy(Lorg/apache/hc/core5/http/HttpMessage;)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/classic/ClassicRequestCopier;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object p1

    return-object p1
.end method
