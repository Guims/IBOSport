.class public final Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecChainHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final acceptEncoding:Lorg/apache/hc/core5/http/Header;

.field private final decoderRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreUnknown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v0, v1}, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;-><init>(Ljava/util/List;Lorg/apache/hc/core5/http/config/Lookup;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/hc/core5/http/config/Lookup;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/entity/InputStreamFactory;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/hc/client5/http/entity/BrotliDecompressingEntity;->isAvailable()Z

    move-result v0

    const-string v1, "br"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "deflate"

    const-string v7, "x-gzip"

    const-string v8, "gzip"

    if-eqz v0, :cond_0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    aput-object v8, v9, v5

    aput-object v7, v9, v4

    aput-object v6, v9, v3

    aput-object v1, v9, v2

    goto :goto_0

    :cond_0
    new-array v9, v2, [Ljava/lang/String;

    aput-object v8, v9, v5

    aput-object v7, v9, v4

    aput-object v6, v9, v3

    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    :cond_1
    const-string p1, "Accept-Encoding"

    invoke-static {p1, v9}, Lorg/apache/hc/core5/http/message/MessageSupport;->format(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->acceptEncoding:Lorg/apache/hc/core5/http/Header;

    if-eqz p2, :cond_2

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->decoderRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    invoke-static {}, Lorg/apache/hc/client5/http/entity/GZIPInputStreamFactory;->getInstance()Lorg/apache/hc/client5/http/entity/GZIPInputStreamFactory;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    invoke-static {}, Lorg/apache/hc/client5/http/entity/GZIPInputStreamFactory;->getInstance()Lorg/apache/hc/client5/http/entity/GZIPInputStreamFactory;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    invoke-static {}, Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;->getInstance()Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/entity/BrotliInputStreamFactory;->getInstance()Lorg/apache/hc/client5/http/entity/BrotliInputStreamFactory;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->decoderRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    :goto_1
    iput-boolean p3, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->ignoreUnknown:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;-><init>(Ljava/util/List;Lorg/apache/hc/core5/http/config/Lookup;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Scope"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isContentCompressionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->acceptEncoding:Lorg/apache/hc/core5/http/Header;

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    :cond_0
    invoke-interface {p3, p1, p2}, Lorg/apache/hc/client5/http/classic/ExecChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isContentCompressionEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_4

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p3, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    sget-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

    invoke-virtual {v0, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/HeaderElement;

    move-result-object p2

    array-length p3, p2

    :goto_0
    if-ge v1, p3, :cond_4

    aget-object v0, p2, v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->decoderRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-interface {v3, v2}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/client5/http/entity/InputStreamFactory;

    if-eqz v3, :cond_1

    new-instance v0, Lorg/apache/hc/client5/http/entity/DecompressingEntity;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/client5/http/entity/DecompressingEntity;-><init>(Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/client5/http/entity/InputStreamFactory;)V

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    const-string v0, "Content-MD5"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v3, "identity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;->ignoreUnknown:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported Content-Encoding: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method
