.class public final Lt4/a;
.super Lt4/i;


# instance fields
.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lt4/a;->k:I

    invoke-direct {p0, p1}, Lt4/i;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final b()V
    .locals 0

    return-void
.end method

.method private final c()V
    .locals 0

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lt4/a;->k:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lt4/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lib/player/app/MyApp;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, LQ4/a;

    invoke-static {v5}, Lib/player/models/MovieModel;->fromM3UItem(LQ4/a;)Lib/player/models/MovieModel;

    move-result-object v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Lib/player/models/MovieModel;->setNum(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lt4/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lib/player/app/MyApp;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, LQ4/a;

    invoke-static {v4}, Lib/player/models/EpisodeModel;->fromM3UItem(LQ4/a;)Lib/player/models/EpisodeModel;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1

    :pswitch_1
    iget-object v0, p0, Lt4/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lib/player/app/MyApp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_4
    :goto_2
    if-ge v4, v2, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, LQ4/a;

    invoke-static {v5}, Lib/player/models/EPGChannel;->fromM3UItem(LQ4/a;)Lib/player/models/EPGChannel;

    move-result-object v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lib/player/models/EPGChannel;->setNum(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreExecute()V
    .locals 1

    iget v0, p0, Lt4/a;->k:I

    return-void
.end method
