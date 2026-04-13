.class public final Lo1/H;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[LI0/L;

.field public final c:LA5/t;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/H;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [LI0/L;

    iput-object p1, p0, Lo1/H;->b:[LI0/L;

    new-instance p1, LA5/t;

    new-instance v0, LA3/d;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0}, LA5/t;-><init>(Ll0/p;)V

    iput-object p1, p0, Lo1/H;->c:LA5/t;

    return-void
.end method


# virtual methods
.method public final a(LI0/s;Lo1/K;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lo1/H;->b:[LI0/L;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget v3, p2, Lo1/K;->d:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, LI0/s;->track(II)LI0/L;

    move-result-object v3

    iget-object v4, p0, Lo1/H;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid closed caption MIME type provided: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lk0/c;->c(Ljava/lang/String;Z)V

    iget-object v6, v4, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v6, p2, Lo1/K;->e:Ljava/lang/String;

    :goto_3
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v7, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v4, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget-object v6, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v4, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    invoke-interface {v3, v4}, LI0/L;->format(Landroidx/media3/common/Format;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
