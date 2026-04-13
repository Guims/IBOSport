.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"

.field private static final PATH_TRAVERSAL:Ljava/util/regex/Pattern;


# instance fields
.field private final baseUrl:Lw5/r;

.field private body:Lw5/F;

.field private contentType:Lw5/t;

.field private formBuilder:Lw5/l;

.field private final hasBody:Z

.field private final headersBuilder:Lw5/o;

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lw5/u;

.field private relativeUrl:Ljava/lang/String;

.field private final requestBuilder:Lw5/A;

.field private urlBuilder:Lw5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lw5/r;Ljava/lang/String;Lw5/p;Lw5/t;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lw5/r;

    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance p1, Lw5/A;

    invoke-direct {p1}, Lw5/A;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lw5/A;

    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lw5/t;

    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lw5/p;->d()Lw5/o;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lw5/o;

    goto :goto_0

    :cond_0
    new-instance p1, Lw5/o;

    invoke-direct {p1}, Lw5/o;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lw5/o;

    :goto_0
    if-eqz p7, :cond_1

    new-instance p1, Lw5/l;

    invoke-direct {p1}, Lw5/l;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->formBuilder:Lw5/l;

    return-void

    :cond_1
    if-eqz p8, :cond_3

    new-instance p1, Lw5/u;

    invoke-direct {p1}, Lw5/u;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lw5/u;

    sget-object p2, Lw5/w;->f:Lw5/t;

    const-string p3, "type"

    invoke-static {p2, p3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p2, Lw5/t;->b:Ljava/lang/String;

    const-string p4, "multipart"

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-object p2, p1, Lw5/u;->b:Lw5/t;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "multipart != "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v3, LK5/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, p0, v1, v2}, LK5/g;->M(Ljava/lang/String;II)V

    invoke-static {v3, p0, v2, v0, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(LK5/g;Ljava/lang/String;IIZ)V

    invoke-virtual {v3}, LK5/g;->C()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static canonicalizeForPath(LK5/g;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, LK5/g;->N(I)V

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_3
    invoke-virtual {v0, v1}, LK5/g;->N(I)V

    :goto_2
    invoke-virtual {v0}, LK5/g;->h()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, LK5/g;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    invoke-virtual {p0, v3}, LK5/g;->G(I)V

    sget-object v5, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, LK5/g;->G(I)V

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    invoke-virtual {p0, v2}, LK5/g;->G(I)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "value"

    const-string v1, "name"

    if-eqz p3, :cond_0

    iget-object p3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lw5/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lw5/l;->a:Ljava/util/ArrayList;

    const/4 v6, 0x1

    const/16 v3, 0x53

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lw5/l;->b:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/16 v2, 0x53

    const/4 v0, 0x0

    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object v3, p1

    move-object p1, p2

    iget-object p2, p0, Lretrofit2/RequestBuilder;->formBuilder:Lw5/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p2, Lw5/l;->a:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/16 v2, 0x5b

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v4, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    invoke-static/range {v0 .. v5}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lw5/l;->b:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/16 v4, 0x5b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object p1, Lw5/t;->d:Ljava/util/regex/Pattern;

    invoke-static {p2}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->contentType:Lw5/t;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed content type: "

    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lw5/o;

    invoke-virtual {v0, p1, p2}, Lw5/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeaders(Lw5/p;)V
    .locals 5

    iget-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lw5/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "headers"

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lw5/p;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPart(Lw5/p;Lw5/F;)V
    .locals 3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lw5/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "body"

    invoke-static {p2, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "Content-Type"

    invoke-virtual {p1, v2}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    if-eqz p1, :cond_1

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lw5/v;

    invoke-direct {v1, p1, p2}, Lw5/v;-><init>(Lw5/p;Lw5/F;)V

    iget-object p1, v0, Lw5/u;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPart(Lw5/v;)V
    .locals 2

    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lw5/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "part"

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lw5/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_0

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-static {p3, p2}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lw5/r;

    invoke-virtual {v2, v0}, Lw5/r;->f(Ljava/lang/String;)Lw5/q;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lw5/q;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed URL. Base: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lretrofit2/RequestBuilder;->baseUrl:Lw5/r;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    iget-object p3, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lw5/q;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "encodedName"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lw5/q;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p3, Lw5/q;->g:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p3, Lw5/q;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/16 v4, 0xd3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, " \"\'<>#&="

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lw5/q;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 v7, 0x1

    const/16 v4, 0xd3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, " \"\'<>#&="

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    move-object v5, p1

    move-object p1, p2

    iget-object p2, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lw5/q;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "name"

    invoke-static {v5, p3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p2, Lw5/q;->g:Ljava/util/ArrayList;

    if-nez p3, :cond_5

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lw5/q;->g:Ljava/util/ArrayList;

    :cond_5
    iget-object p3, p2, Lw5/q;->g:Ljava/util/ArrayList;

    invoke-static {p3}, Le5/g;->c(Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/16 v4, 0xdb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    invoke-static/range {v2 .. v7}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lw5/q;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Le5/g;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const/4 v7, 0x1

    const/16 v4, 0xdb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTag(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lw5/A;

    invoke-virtual {v0, p1, p2}, Lw5/A;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public get()Lw5/A;
    .locals 5

    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lw5/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/q;->a()Lw5/r;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lw5/r;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "link"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lw5/r;->f(Ljava/lang/String;)Lw5/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw5/q;->a()Lw5/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_8

    :goto_1
    iget-object v2, p0, Lretrofit2/RequestBuilder;->body:Lw5/F;

    if-nez v2, :cond_5

    iget-object v3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lw5/l;

    if-eqz v3, :cond_2

    new-instance v2, Lw5/m;

    iget-object v1, v3, Lw5/l;->a:Ljava/util/ArrayList;

    iget-object v3, v3, Lw5/l;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v3}, Lw5/m;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lw5/u;

    if-eqz v3, :cond_4

    iget-object v1, v3, Lw5/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lw5/w;

    iget-object v4, v3, Lw5/u;->a:LK5/j;

    iget-object v3, v3, Lw5/u;->b:Lw5/t;

    invoke-static {v1}, Lx5/b;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v4, v3, v1}, Lw5/w;-><init>(LK5/j;Lw5/t;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v3, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lw5/F;->create(Lw5/t;[B)Lw5/F;

    move-result-object v2

    :cond_5
    :goto_2
    iget-object v1, p0, Lretrofit2/RequestBuilder;->contentType:Lw5/t;

    if-eqz v1, :cond_7

    if-eqz v2, :cond_6

    new-instance v3, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v3, v2, v1}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lw5/F;Lw5/t;)V

    move-object v2, v3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lw5/o;

    const-string v4, "Content-Type"

    iget-object v1, v1, Lw5/t;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lw5/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lw5/A;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lw5/A;->a:Lw5/r;

    iget-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lw5/o;

    invoke-virtual {v0}, Lw5/o;->c()Lw5/p;

    move-result-object v0

    invoke-virtual {v0}, Lw5/p;->d()Lw5/o;

    move-result-object v0

    iput-object v0, v1, Lw5/A;->c:Lw5/o;

    iget-object v0, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lw5/A;->c(Ljava/lang/String;Lw5/F;)V

    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lw5/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lw5/F;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lw5/F;

    return-void
.end method

.method public setRelativeUrl(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
