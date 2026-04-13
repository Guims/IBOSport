.class public Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;
.super Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator<",
        "Lorg/apache/hc/core5/http/HeaderElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final parser:Lorg/apache/hc/core5/http/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;-><init>(Ljava/util/Iterator;Lorg/apache/hc/core5/http/message/HeaderValueParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/hc/core5/http/message/HeaderValueParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;",
            "Lorg/apache/hc/core5/http/message/HeaderValueParser;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;-><init>(Ljava/util/Iterator;)V

    const-string p1, "Parser"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/message/HeaderValueParser;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/hc/core5/http/message/HeaderValueParser;

    return-void
.end method


# virtual methods
.method public bridge synthetic hasNext()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;->parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/HeaderElement;

    move-result-object p1

    return-object p1
.end method

.method public parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/HeaderElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/hc/core5/http/message/HeaderValueParser;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/message/HeaderValueParser;->parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/HeaderElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;->remove()V

    return-void
.end method
