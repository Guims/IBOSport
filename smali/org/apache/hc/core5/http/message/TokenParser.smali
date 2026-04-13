.class public Lorg/apache/hc/core5/http/message/TokenParser;
.super Lorg/apache/hc/core5/util/Tokenizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DQUOTE:C = '\"'

.field public static final ESCAPE:C = '\\'

.field public static final INSTANCE:Lorg/apache/hc/core5/http/message/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/TokenParser;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/message/TokenParser;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/message/TokenParser;->INSTANCE:Lorg/apache/hc/core5/http/message/TokenParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/util/Tokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method public copyContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/hc/core5/util/Tokenizer;->copyContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public copyContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/apache/hc/core5/http/message/TokenParser;->copyContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    return-void
.end method

.method public copyQuotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->copyQuotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public copyQuotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/hc/core5/http/message/TokenParser;->copyQuotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    return-void
.end method

.method public copyUnquotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/hc/core5/util/Tokenizer;->copyUnquotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public copyUnquotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getLowerBound()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/apache/hc/core5/http/message/TokenParser;->copyUnquotedContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    return-void
.end method

.method public parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseValue(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->parseValue(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    return-void
.end method
