.class public Lorg/apache/hc/core5/http/message/HttpResponseWrapper;
.super Lorg/apache/hc/core5/http/message/AbstractMessageWrapper;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpResponse;


# instance fields
.field private final message:Lorg/apache/hc/core5/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/AbstractMessageWrapper;-><init>(Lorg/apache/hc/core5/http/HttpMessage;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setCode(I)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/HttpResponseWrapper;->message:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method
