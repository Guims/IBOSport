.class public abstract Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/NHttpMessageParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/NHttpMessageParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private emptyLineCount:I

.field private final headerBufs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

.field private final lineParser:Lorg/apache/hc/core5/http/message/LineParser;

.field private message:Lorg/apache/hc/core5/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final messageConstraints:Lorg/apache/hc/core5/http/config/Http1Config;

.field private state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/message/LineParser;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/message/LazyLineParser;->INSTANCE:Lorg/apache/hc/core5/http/message/LazyLineParser;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_1
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->messageConstraints:Lorg/apache/hc/core5/http/config/Http1Config;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;->READ_HEAD_LINE:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    return-void
.end method

.method private parseHeadLine()Lorg/apache/hc/core5/http/HttpMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->emptyLineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->emptyLineCount:I

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->messageConstraints:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxEmptyLineCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string v1, "Maximum empty line limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpMessage;

    move-result-object v0

    return-object v0
.end method

.method private parseHeader()V
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    const/16 v5, 0x20

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v2, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    :cond_0
    if-lez v1, :cond_5

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->messageConstraints:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v6

    add-int/2addr v6, v4

    sub-int/2addr v6, v3

    if-gt v6, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Lorg/apache/hc/core5/util/CharArrayBuffer;II)V

    return-void

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method public abstract createMessage(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            ")TT;"
        }
    .end annotation
.end method

.method public getLineParser()Lorg/apache/hc/core5/http/message/LineParser;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    return-object v0
.end method

.method public parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/SessionInputBuffer;",
            "Z)TT;"
        }
    .end annotation

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;->COMPLETED:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->clear()V

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-interface {p1, v0, p2}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->readLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Z)Z

    move-result v0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->messageConstraints:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v3

    if-gt v3, v2, :cond_2

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->length()I

    move-result v3

    if-gt v3, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string p2, "Maximum line length limit exceeded"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$1;->$SwitchMap$org$apache$hc$core5$http$impl$nio$AbstractMessageParser$State:[I

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->messageConstraints:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxHeaderCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string p2, "Maximum header count exceeded"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->parseHeader()V

    goto :goto_4

    :cond_8
    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->parseHeadLine()Lorg/apache/hc/core5/http/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->message:Lorg/apache/hc/core5/http/HttpMessage;

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;->READ_HEADERS:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    :cond_a
    :goto_4
    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    goto/16 :goto_0

    :cond_b
    :goto_5
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    if-ne p1, v1, :cond_d

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/util/CharArrayBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->message:Lorg/apache/hc/core5/http/HttpMessage;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->lineParser:Lorg/apache/hc/core5/http/message/LineParser;

    invoke-interface {v1, p2}, Lorg/apache/hc/core5/http/message/LineParser;->parseHeader(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/Header;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->message:Lorg/apache/hc/core5/http/HttpMessage;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/MessageHeaders;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/HttpMessage;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;->READ_HEAD_LINE:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->state:Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser$State;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->headerBufs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->emptyLineCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractMessageParser;->message:Lorg/apache/hc/core5/http/HttpMessage;

    return-void
.end method
