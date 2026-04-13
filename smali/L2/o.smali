.class public final LL2/o;
.super Ljava/lang/Object;

# interfaces
.implements LI1/b;
.implements LK/r;
.implements LR1/n;
.implements Lp5/b;
.implements LT2/a;
.implements LF/a;
.implements Landroidx/leanback/widget/J;


# static fields
.field public static q:LL2/o;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LO1/o;

    const-wide/16 v0, 0x1f4

    invoke-direct {p1, v0, v1}, Ld2/j;-><init>(J)V

    iput-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lp5/t;

    sget-object v0, LT/U;->b:LT/U;

    invoke-direct {p1, v0}, Lp5/t;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ld5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Le5/h;

    iput-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "tvg-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-tvg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static x(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_15

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    :goto_0
    add-int/2addr v4, v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v4, "duration"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    move-object p0, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_4
    move-object v5, v1

    move v4, v3

    move v9, v4

    move v8, v7

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_14

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v8}, Lp/e;->c(I)I

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_11

    const/4 v13, 0x3

    if-eq v11, v7, :cond_e

    const/16 v14, 0x22

    if-eq v11, v12, :cond_c

    if-eq v11, v13, :cond_5

    goto/16 :goto_8

    :cond_5
    if-eqz v9, :cond_9

    :goto_3
    if-eq v4, v14, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v10, v8, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v10, v4

    move v4, v8

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_7
    move-object v5, v1

    move v9, v3

    :goto_4
    move v8, v7

    :cond_8
    :goto_5
    move v4, v10

    goto :goto_2

    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_a
    move-object v5, v1

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_c
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_8

    if-ne v4, v14, :cond_d

    move v9, v7

    goto :goto_6

    :cond_d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    const/4 v8, 0x4

    goto :goto_5

    :cond_e
    const/16 v11, 0x3d

    if-ne v4, v11, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move-object v5, v6

    goto :goto_7

    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move v4, v10

    move v8, v13

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_11
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_12

    :goto_8
    goto :goto_5

    :cond_12
    const/16 v11, 0x2c

    if-ne v4, v11, :cond_13

    const-string v4, "channel_name"

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v10

    move v8, v12

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_15

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    invoke-virtual {v2, v3, p0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_15
    :goto_9
    return-object v0
.end method

.method public static y(Ljava/lang/String;)LK1/c;
    .locals 3

    invoke-static {p0}, LL2/o;->x(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    new-instance v0, LK1/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LK1/c;-><init>(IZ)V

    const-string v1, "name"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LK1/c;->q:Ljava/lang/Object;

    const-string v1, "type"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LK1/c;->r:Ljava/lang/Object;

    const-string v1, "dlna_extras"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LK1/c;->s:Ljava/lang/Object;

    const-string v1, "plugin"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LK1/c;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public static z(Ljava/lang/String;)LQ4/a;
    .locals 3

    invoke-static {p0}, LL2/o;->x(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    new-instance v0, LQ4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "id"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "tvg-id"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->a:Ljava/lang/String;

    :cond_1
    const-string v1, "channel_name"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->b:Ljava/lang/String;

    const-string v1, "tvg-name"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->b:Ljava/lang/String;

    :cond_2
    const-string v1, "duration"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, LQ4/a;->c:I

    const-string v1, "logo"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->e:Ljava/lang/String;

    const-string v1, "group-title"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->f:Ljava/lang/String;

    const-string v1, "type"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->g:Ljava/lang/String;

    const-string v1, "dlna_extras"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQ4/a;->h:Ljava/lang/String;

    const-string v1, "plugin"

    invoke-static {v1, p0}, LL2/o;->o(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LQ4/a;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A(Lorg/json/JSONObject;)LM3/b;
    .locals 3

    const-string v0, "settings_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not determine SettingsJsonTransform for settings version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Using default settings values."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lx2/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, LW3/e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LW3/e;-><init>(I)V

    :goto_0
    iget-object v1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, Lu2/j;

    invoke-interface {v0, v1, p1}, LM3/d;->m(Lu2/j;Lorg/json/JSONObject;)LM3/b;

    move-result-object p1

    return-object p1
.end method

.method public C(I)V
    .locals 3

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->u:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object p1

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    iget-object v2, v0, Lv1/G;->a:Lr0/C;

    invoke-virtual {v2, p1}, Lr0/C;->l(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lv1/G;->C0(Lv1/M;ILandroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    invoke-virtual {v0, p1, v1}, Lv1/G;->x0(Landroid/view/View;Lv1/M;)V

    return-void
.end method

.method public declared-synchronized D(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, LL2/o;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized E(JLjava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, LL2/o;->s(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    const-string v0, "last-used-date"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, LL2/o;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, p3, p1}, LL2/o;->G(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object p2, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    const-string v0, "fire-count"

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    const-wide/16 v9, 0x1e

    cmp-long p2, v7, v9

    if-nez p2, :cond_3

    invoke-virtual {p0}, LL2/o;->j()V

    iget-object p2, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    const-string v0, "fire-count"

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    :cond_3
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-long/2addr v3, v5

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "fire-count"

    invoke-interface {p2, p3, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "last-used-date"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public F(LT/T;)V
    .locals 6

    const-string v0, "newState"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Lp5/t;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lp5/t;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lq5/i;->a:LE1/a;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    move-object v3, v1

    check-cast v3, LT/T;

    instance-of v4, v3, LT/L;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v4, LT/U;->b:LT/U;

    invoke-static {v3, v4}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    instance-of v4, v3, LT/c;

    if-eqz v4, :cond_4

    iget v4, p1, LT/T;->a:I

    iget v5, v3, LT/T;->a:I

    if-le v4, v5, :cond_5

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_4
    instance-of v4, v3, LT/J;

    if-eqz v4, :cond_8

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    move-object v1, v2

    :cond_6
    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2}, Lp5/t;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_8
    new-instance p1, LR1/G;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public declared-synchronized G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, LL2/o;->D(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;IIII)V
    .locals 7

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/leanback/widget/o;

    iget-object v0, v1, Landroidx/leanback/widget/o;->U:LK1/c;

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    const/high16 p1, -0x80000000

    if-eq p5, p1, :cond_0

    const p1, 0x7fffffff

    if-ne p5, p1, :cond_2

    :cond_0
    iget-object p1, v1, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget-boolean p1, p1, Landroidx/leanback/widget/i;->c:Z

    if-nez p1, :cond_1

    iget-object p1, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/W;

    iget p1, p1, Landroidx/leanback/widget/W;->j:I

    move p5, p1

    goto :goto_0

    :cond_1
    iget-object p1, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/W;

    iget p5, p1, Landroidx/leanback/widget/W;->i:I

    iget p1, p1, Landroidx/leanback/widget/W;->k:I

    sub-int/2addr p5, p1

    :cond_2
    :goto_0
    iget-object p1, v1, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget-boolean p1, p1, Landroidx/leanback/widget/i;->c:Z

    if-nez p1, :cond_3

    add-int/2addr p3, p5

    move v5, p3

    move v4, p5

    goto :goto_1

    :cond_3
    sub-int p1, p5, p3

    move v4, p1

    move v5, p5

    :goto_1
    invoke-virtual {v1, p4}, Landroidx/leanback/widget/o;->a1(I)I

    move-result p1

    iget-object p3, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast p3, Landroidx/leanback/widget/W;

    iget p3, p3, Landroidx/leanback/widget/W;->j:I

    add-int/2addr p1, p3

    iget p3, v1, Landroidx/leanback/widget/o;->G:I

    sub-int v6, p1, p3

    iget-object p1, v1, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object p3, p1, LD5/A;->c:Ljava/lang/Object;

    check-cast p3, Lc1/c;

    if-eqz p3, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, LD5/A;->c:Ljava/lang/Object;

    check-cast p1, Lc1/c;

    invoke-virtual {p1, p2}, Lc1/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_4

    invoke-virtual {v2, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_4
    move v3, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/leanback/widget/o;->f1(Landroid/view/View;IIII)V

    iget-object p1, v1, Landroidx/leanback/widget/o;->t:Lv1/T;

    iget-boolean p1, p1, Lv1/T;->g:Z

    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroidx/leanback/widget/o;->B1()V

    :cond_5
    iget p1, v1, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p1, p1, 0x3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    iget-object p1, v1, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    if-eqz p1, :cond_9

    iget-object p3, p1, Landroidx/leanback/widget/m;->u:Landroidx/leanback/widget/o;

    iget-boolean p4, p1, Landroidx/leanback/widget/m;->s:Z

    if-eqz p4, :cond_6

    iget p4, p1, Landroidx/leanback/widget/m;->t:I

    if-eqz p4, :cond_6

    invoke-virtual {p3, p4, p2}, Landroidx/leanback/widget/o;->l1(IZ)I

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/m;->t:I

    :cond_6
    iget p2, p1, Landroidx/leanback/widget/m;->t:I

    if-eqz p2, :cond_8

    if-lez p2, :cond_7

    invoke-virtual {p3}, Landroidx/leanback/widget/o;->d1()Z

    move-result p2

    if-nez p2, :cond_8

    :cond_7
    iget p2, p1, Landroidx/leanback/widget/m;->t:I

    if-gez p2, :cond_9

    invoke-virtual {p3}, Lv1/G;->H()I

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p3, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object p2

    if-eqz p2, :cond_9

    :cond_8
    iget p2, p3, Landroidx/leanback/widget/o;->B:I

    iput p2, p1, Lv1/s;->a:I

    invoke-virtual {p1}, Lv1/s;->j()V

    :cond_9
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    if-nez v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-ne v0, v3, :cond_3

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return v3

    :cond_4
    return v2
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, LL2/o;->i()S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LL2/o;->i()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public d(IILI0/r;)V
    .locals 23

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget-object v4, v2, LL2/o;->b:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, La1/d;

    iget-object v4, v5, La1/d;->b:La1/e;

    iget-object v6, v5, La1/d;->c:Landroid/util/SparseArray;

    iget-object v7, v5, La1/d;->k:Lk0/u;

    iget-object v8, v5, La1/d;->i:Lk0/u;

    const/16 v9, 0xa1

    const/16 v10, 0xa3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v0, v9, :cond_b

    if-eq v0, v10, :cond_b

    const/16 v4, 0xa5

    if-eq v0, v4, :cond_8

    const/16 v4, 0x41ed

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4255

    if-eq v0, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v0, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v0, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v0, v4, :cond_0

    invoke-virtual {v5, v0}, La1/d;->c(I)V

    iget-object v0, v5, La1/d;->w:La1/c;

    new-array v4, v1, [B

    iput-object v4, v0, La1/c;->w:[B

    invoke-interface {v3, v4, v15, v1}, LI0/r;->readFully([BII)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v5, v0}, La1/d;->c(I)V

    iget-object v0, v5, La1/d;->w:La1/c;

    new-array v4, v1, [B

    iput-object v4, v0, La1/c;->k:[B

    invoke-interface {v3, v4, v15, v1}, LI0/r;->readFully([BII)V

    return-void

    :cond_2
    iget-object v0, v7, Lk0/u;->a:[B

    invoke-static {v0, v15}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, Lk0/u;->a:[B

    rsub-int/lit8 v4, v1, 0x4

    invoke-interface {v3, v0, v4, v1}, LI0/r;->readFully([BII)V

    invoke-virtual {v7, v15}, Lk0/u;->G(I)V

    invoke-virtual {v7}, Lk0/u;->w()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v5, La1/d;->y:I

    return-void

    :cond_3
    new-array v4, v1, [B

    invoke-interface {v3, v4, v15, v1}, LI0/r;->readFully([BII)V

    invoke-virtual {v5, v0}, La1/d;->c(I)V

    iget-object v0, v5, La1/d;->w:La1/c;

    new-instance v1, LI0/K;

    invoke-direct {v1, v14, v15, v15, v4}, LI0/K;-><init>(III[B)V

    iput-object v1, v0, La1/c;->j:LI0/K;

    return-void

    :cond_4
    invoke-virtual {v5, v0}, La1/d;->c(I)V

    iget-object v0, v5, La1/d;->w:La1/c;

    new-array v4, v1, [B

    iput-object v4, v0, La1/c;->i:[B

    invoke-interface {v3, v4, v15, v1}, LI0/r;->readFully([BII)V

    return-void

    :cond_5
    invoke-virtual {v5, v0}, La1/d;->c(I)V

    iget-object v0, v5, La1/d;->w:La1/c;

    iget v4, v0, La1/c;->g:I

    const v5, 0x64767643

    if-eq v4, v5, :cond_7

    const v5, 0x64766343

    if-ne v4, v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v3, v1}, LI0/r;->n(I)V

    return-void

    :cond_7
    :goto_0
    new-array v4, v1, [B

    iput-object v4, v0, La1/c;->O:[B

    invoke-interface {v3, v4, v15, v1}, LI0/r;->readFully([BII)V

    return-void

    :cond_8
    iget v0, v5, La1/d;->I:I

    if-eq v0, v12, :cond_9

    goto/16 :goto_12

    :cond_9
    iget v0, v5, La1/d;->O:I

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La1/c;

    iget v4, v5, La1/d;->R:I

    iget-object v5, v5, La1/d;->p:Lk0/u;

    if-ne v4, v13, :cond_a

    const-string v4, "V_VP9"

    iget-object v0, v0, La1/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5, v1}, Lk0/u;->D(I)V

    iget-object v0, v5, Lk0/u;->a:[B

    invoke-interface {v3, v0, v15, v1}, LI0/r;->readFully([BII)V

    return-void

    :cond_a
    invoke-interface {v3, v1}, LI0/r;->n(I)V

    return-void

    :cond_b
    iget v7, v5, La1/d;->I:I

    const/16 v9, 0x8

    if-nez v7, :cond_c

    invoke-virtual {v4, v3, v15, v14, v9}, La1/e;->b(LI0/r;ZZI)J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, v5, La1/d;->O:I

    iget v4, v4, La1/e;->c:I

    iput v4, v5, La1/d;->P:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v5, La1/d;->K:J

    iput v14, v5, La1/d;->I:I

    invoke-virtual {v8, v15}, Lk0/u;->D(I)V

    :cond_c
    iget v4, v5, La1/d;->O:I

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, La1/c;

    if-nez v6, :cond_d

    iget v0, v5, La1/d;->P:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, LI0/r;->n(I)V

    iput v15, v5, La1/d;->I:I

    return-void

    :cond_d
    iget-object v4, v6, La1/c;->Y:LI0/L;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v5, La1/d;->I:I

    if-ne v4, v14, :cond_22

    const/4 v4, 0x3

    invoke-virtual {v5, v3, v4}, La1/d;->i(LI0/r;I)V

    iget-object v10, v8, Lk0/u;->a:[B

    aget-byte v10, v10, v12

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v14

    const/16 v11, 0xff

    if-nez v10, :cond_10

    iput v14, v5, La1/d;->M:I

    iget-object v10, v5, La1/d;->N:[I

    if-nez v10, :cond_e

    new-array v10, v14, [I

    goto :goto_1

    :cond_e
    array-length v13, v10

    if-lt v13, v14, :cond_f

    goto :goto_1

    :cond_f
    array-length v10, v10

    mul-int/2addr v10, v12

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    :goto_1
    iput-object v10, v5, La1/d;->N:[I

    iget v13, v5, La1/d;->P:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v4

    aput v1, v10, v15

    :goto_2
    move/from16 v17, v14

    move/from16 v19, v15

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v5, v3, v13}, La1/d;->i(LI0/r;I)V

    iget-object v7, v8, Lk0/u;->a:[B

    aget-byte v7, v7, v4

    and-int/2addr v7, v11

    add-int/2addr v7, v14

    iput v7, v5, La1/d;->M:I

    move/from16 v17, v13

    iget-object v13, v5, La1/d;->N:[I

    if-nez v13, :cond_11

    new-array v13, v7, [I

    goto :goto_3

    :cond_11
    array-length v9, v13

    if-lt v9, v7, :cond_12

    goto :goto_3

    :cond_12
    array-length v9, v13

    mul-int/2addr v9, v12

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v13, v7, [I

    :goto_3
    iput-object v13, v5, La1/d;->N:[I

    if-ne v10, v12, :cond_13

    iget v4, v5, La1/d;->P:I

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x4

    iget v4, v5, La1/d;->M:I

    div-int/2addr v1, v4

    invoke-static {v13, v15, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2

    :cond_13
    if-ne v10, v14, :cond_16

    move v4, v15

    move v7, v4

    move/from16 v13, v17

    :goto_4
    iget v9, v5, La1/d;->M:I

    sub-int/2addr v9, v14

    if-ge v4, v9, :cond_15

    iget-object v9, v5, La1/d;->N:[I

    aput v15, v9, v4

    :goto_5
    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v5, v3, v9}, La1/d;->i(LI0/r;I)V

    iget-object v10, v8, Lk0/u;->a:[B

    aget-byte v10, v10, v13

    and-int/2addr v10, v11

    iget-object v13, v5, La1/d;->N:[I

    aget v16, v13, v4

    add-int v16, v16, v10

    aput v16, v13, v4

    if-eq v10, v11, :cond_14

    add-int v7, v7, v16

    add-int/lit8 v4, v4, 0x1

    move v13, v9

    goto :goto_4

    :cond_14
    move v13, v9

    goto :goto_5

    :cond_15
    iget-object v4, v5, La1/d;->N:[I

    iget v10, v5, La1/d;->P:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v13

    sub-int/2addr v1, v7

    aput v1, v4, v9

    goto :goto_2

    :cond_16
    if-ne v10, v4, :cond_21

    move v4, v15

    move v7, v4

    move/from16 v13, v17

    :goto_6
    iget v9, v5, La1/d;->M:I

    sub-int/2addr v9, v14

    if-ge v4, v9, :cond_1e

    iget-object v9, v5, La1/d;->N:[I

    aput v15, v9, v4

    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v5, v3, v9}, La1/d;->i(LI0/r;I)V

    iget-object v10, v8, Lk0/u;->a:[B

    aget-byte v10, v10, v13

    if-eqz v10, :cond_1d

    move/from16 v17, v14

    move v10, v15

    :goto_7
    const/16 v14, 0x8

    if-ge v10, v14, :cond_19

    rsub-int/lit8 v14, v10, 0x7

    shl-int v14, v17, v14

    move/from16 v19, v15

    iget-object v15, v8, Lk0/u;->a:[B

    aget-byte v15, v15, v13

    and-int/2addr v15, v14

    if-eqz v15, :cond_18

    add-int v15, v9, v10

    invoke-virtual {v5, v3, v15}, La1/d;->i(LI0/r;I)V

    iget-object v12, v8, Lk0/u;->a:[B

    aget-byte v12, v12, v13

    and-int/2addr v12, v11

    not-int v13, v14

    and-int/2addr v12, v13

    int-to-long v12, v12

    :goto_8
    if-ge v9, v15, :cond_17

    const/16 v18, 0x8

    shl-long v12, v12, v18

    iget-object v14, v8, Lk0/u;->a:[B

    add-int/lit8 v20, v9, 0x1

    aget-byte v9, v14, v9

    and-int/2addr v9, v11

    move-wide/from16 v21, v12

    int-to-long v11, v9

    or-long v12, v21, v11

    move/from16 v9, v20

    const/16 v11, 0xff

    goto :goto_8

    :cond_17
    if-lez v4, :cond_1a

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    const-wide/16 v20, 0x1

    shl-long v9, v20, v10

    sub-long v9, v9, v20

    sub-long/2addr v12, v9

    goto :goto_9

    :cond_18
    add-int/lit8 v10, v10, 0x1

    move/from16 v15, v19

    const/16 v11, 0xff

    const/4 v12, 0x2

    goto :goto_7

    :cond_19
    move/from16 v19, v15

    const-wide/16 v12, 0x0

    move v15, v9

    :cond_1a
    :goto_9
    const-wide/32 v9, -0x80000000

    cmp-long v9, v12, v9

    if-ltz v9, :cond_1c

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v12, v9

    if-gtz v9, :cond_1c

    long-to-int v9, v12

    iget-object v10, v5, La1/d;->N:[I

    if-nez v4, :cond_1b

    goto :goto_a

    :cond_1b
    add-int/lit8 v11, v4, -0x1

    aget v11, v10, v11

    add-int/2addr v9, v11

    :goto_a
    aput v9, v10, v4

    add-int/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    move v13, v15

    move/from16 v14, v17

    move/from16 v15, v19

    const/16 v11, 0xff

    const/4 v12, 0x2

    goto/16 :goto_6

    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v1, 0x0

    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1e
    move/from16 v17, v14

    move/from16 v19, v15

    iget-object v4, v5, La1/d;->N:[I

    iget v10, v5, La1/d;->P:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v13

    sub-int/2addr v1, v7

    aput v1, v4, v9

    :goto_b
    iget-object v1, v8, Lk0/u;->a:[B

    aget-byte v4, v1, v19

    const/16 v18, 0x8

    shl-int/lit8 v4, v4, 0x8

    aget-byte v1, v1, v17

    const/16 v14, 0xff

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    iget-wide v9, v5, La1/d;->D:J

    int-to-long v11, v1

    invoke-virtual {v5, v11, v12}, La1/d;->l(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    iput-wide v11, v5, La1/d;->J:J

    iget v1, v6, La1/c;->d:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_20

    const/16 v7, 0xa3

    if-ne v0, v7, :cond_1f

    iget-object v1, v8, Lk0/u;->a:[B

    aget-byte v1, v1, v4

    const/16 v8, 0x80

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_1f

    goto :goto_c

    :cond_1f
    move/from16 v1, v19

    goto :goto_d

    :cond_20
    :goto_c
    move/from16 v1, v17

    :goto_d
    iput v1, v5, La1/d;->Q:I

    iput v4, v5, La1/d;->I:I

    move/from16 v1, v19

    iput v1, v5, La1/d;->L:I

    :goto_e
    const/16 v7, 0xa3

    goto :goto_f

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_22
    move/from16 v17, v14

    goto :goto_e

    :goto_f
    if-ne v0, v7, :cond_24

    :goto_10
    iget v0, v5, La1/d;->L:I

    iget v1, v5, La1/d;->M:I

    if-ge v0, v1, :cond_23

    iget-object v1, v5, La1/d;->N:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v5, v3, v6, v0, v1}, La1/d;->m(LI0/r;La1/c;IZ)I

    move-result v10

    iget-wide v0, v5, La1/d;->J:J

    iget v4, v5, La1/d;->L:I

    iget v7, v6, La1/c;->e:I

    mul-int/2addr v4, v7

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    add-long/2addr v7, v0

    iget v9, v5, La1/d;->Q:I

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, La1/d;->d(La1/c;JIII)V

    iget v0, v5, La1/d;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, La1/d;->L:I

    goto :goto_10

    :cond_23
    const/4 v1, 0x0

    iput v1, v5, La1/d;->I:I

    return-void

    :cond_24
    :goto_11
    iget v0, v5, La1/d;->L:I

    iget v1, v5, La1/d;->M:I

    if-ge v0, v1, :cond_25

    iget-object v1, v5, La1/d;->N:[I

    aget v4, v1, v0

    move/from16 v7, v17

    invoke-virtual {v5, v3, v6, v4, v7}, La1/d;->m(LI0/r;La1/c;IZ)I

    move-result v4

    aput v4, v1, v0

    iget v0, v5, La1/d;->L:I

    add-int/2addr v0, v7

    iput v0, v5, La1/d;->L:I

    goto :goto_11

    :cond_25
    :goto_12
    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/io/File;LI1/j;)Z
    .locals 5

    check-cast p1, Ljava/io/InputStream;

    const-string p3, "StreamEncoder"

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, LL1/g;

    const/high16 v1, 0x10000

    const-class v2, [B

    invoke-virtual {v0, v1, v2}, LL1/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-virtual {v4, v1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-virtual {v0, v1}, LL1/g;->g(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    const/4 p2, 0x3

    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Failed to encode data onto the OutputStream"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    invoke-virtual {v0, v1}, LL1/g;->g(Ljava/lang/Object;)V

    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    invoke-virtual {v0, v1}, LL1/g;->g(Ljava/lang/Object;)V

    throw p1
.end method

.method public g([BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    if-ge v0, p2, :cond_0

    iget-object v1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    sub-int v3, p2, v0

    invoke-virtual {v1, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, LR1/m;

    invoke-direct {p1}, LR1/m;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return v0
.end method

.method public h(Lp5/c;LX4/c;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, LY1/c;

    new-instance v1, LT/s;

    invoke-direct {v1, p1}, LT/s;-><init>(Lp5/c;)V

    invoke-virtual {v0, v1, p2}, LY1/c;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public i()S
    .locals 2

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, LR1/m;

    invoke-direct {v0}, LR1/m;-><init>()V

    throw v0
.end method

.method public declared-synchronized j()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "fire-count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, ""

    iget-object v3, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Set;

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v7

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/SharedPreferences;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "fire-count"

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k(IZ[Ljava/lang/Object;Z)I
    .locals 8

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->u:I

    sub-int v1, p1, v1

    iget-object v2, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    invoke-virtual {v2, v1}, Lv1/M;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/l;

    iget-object v3, v0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lv1/H;->a:Lv1/X;

    invoke-virtual {v2}, Lv1/X;->i()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1, v2, v4}, Lv1/G;->b(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3, v4}, Lv1/G;->b(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, v1, v2, v3}, Lv1/G;->b(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v3, v3}, Lv1/G;->b(Landroid/view/View;IZ)V

    :goto_0
    iget p2, v0, Landroidx/leanback/widget/o;->F:I

    if-eq p2, v2, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, v0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    if-eqz p2, :cond_c

    iget-object p4, p2, Landroidx/leanback/widget/m;->u:Landroidx/leanback/widget/o;

    iget-boolean v2, p2, Landroidx/leanback/widget/m;->s:Z

    if-nez v2, :cond_c

    iget v2, p2, Landroidx/leanback/widget/m;->t:I

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    if-lez v2, :cond_5

    iget v2, p4, Landroidx/leanback/widget/o;->B:I

    iget v5, p4, Landroidx/leanback/widget/o;->Q:I

    add-int/2addr v2, v5

    goto :goto_1

    :cond_5
    iget v2, p4, Landroidx/leanback/widget/o;->B:I

    iget v5, p4, Landroidx/leanback/widget/o;->Q:I

    sub-int/2addr v2, v5

    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget v6, p2, Landroidx/leanback/widget/m;->t:I

    if-eqz v6, :cond_b

    iget-object v6, p2, Lv1/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    invoke-virtual {v6, v2}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p4}, Lv1/G;->R()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_7
    iput v2, p4, Landroidx/leanback/widget/o;->B:I

    iget v5, p2, Landroidx/leanback/widget/m;->t:I

    if-lez v5, :cond_8

    add-int/lit8 v5, v5, -0x1

    iput v5, p2, Landroidx/leanback/widget/m;->t:I

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    iput v5, p2, Landroidx/leanback/widget/m;->t:I

    :goto_3
    move-object v5, v6

    :cond_9
    iget v6, p2, Landroidx/leanback/widget/m;->t:I

    if-lez v6, :cond_a

    iget v6, p4, Landroidx/leanback/widget/o;->Q:I

    add-int/2addr v2, v6

    goto :goto_2

    :cond_a
    iget v6, p4, Landroidx/leanback/widget/o;->Q:I

    sub-int/2addr v2, v6

    goto :goto_2

    :cond_b
    :goto_4
    if-eqz v5, :cond_c

    invoke-virtual {p4}, Lv1/G;->R()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p4, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p4, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    iget p2, p4, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p2, p2, -0x21

    iput p2, p4, Landroidx/leanback/widget/o;->z:I

    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    iget p2, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p4, p2, 0x3

    if-eq p4, v4, :cond_e

    iget p2, v0, Landroidx/leanback/widget/o;->B:I

    if-ne p1, p2, :cond_10

    iget-object p1, v0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    if-nez p1, :cond_10

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->S0()V

    goto :goto_7

    :cond_e
    and-int/lit8 p4, p2, 0x4

    if-nez p4, :cond_10

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_f

    iget p4, v0, Landroidx/leanback/widget/o;->B:I

    if-ne p1, p4, :cond_f

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->S0()V

    goto :goto_7

    :cond_f
    if-eqz p2, :cond_10

    iget p2, v0, Landroidx/leanback/widget/o;->B:I

    if-lt p1, p2, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_10

    iput p1, v0, Landroidx/leanback/widget/o;->B:I

    iget p1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->S0()V

    :cond_10
    :goto_7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/o;->h1(Landroid/view/View;)V

    :cond_11
    aput-object v1, p3, v3

    iget p1, v0, Landroidx/leanback/widget/o;->r:I

    if-nez p1, :cond_12

    invoke-static {v1}, Landroidx/leanback/widget/o;->X0(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_12
    invoke-static {v1}, Landroidx/leanback/widget/o;->W0(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized l()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, LL2/o;->s(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string v1, "fire-count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    const-string v1, "fire-count"

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v0, LT3/e;

    iget-object v2, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v2, LT3/d;

    move-object v3, v2

    iget-object v2, v3, LT3/d;->a:Ljava/util/HashMap;

    move-object v4, v3

    iget-object v3, v4, LT3/d;->b:Ljava/util/HashMap;

    move-object v5, v4

    iget-object v4, v5, LT3/d;->c:LT3/a;

    iget-boolean v5, v5, LT3/d;->d:Z

    invoke-direct/range {v0 .. v5}, LT3/e;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;LT3/a;Z)V

    invoke-virtual {v0, p1}, LT3/e;->h(Ljava/lang/Object;)LT3/e;

    invoke-virtual {v0}, LT3/e;->j()V

    iget-object p1, v0, LT3/e;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized n()Ljava/util/ArrayList;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, LL2/o;->s(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, LW3/a;

    invoke-direct {v3, v2, v4}, LW3/a;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "fire-global"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/X;

    invoke-virtual {v0}, Landroidx/fragment/app/X;->a()V

    return-void
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/o;

    iget-object v1, v0, Landroidx/leanback/widget/o;->t:Lv1/T;

    invoke-virtual {v1}, Lv1/T;->b()I

    move-result v1

    iget v0, v0, Landroidx/leanback/widget/o;->u:I

    add-int/2addr v1, v0

    return v1
.end method

.method public q()LT/T;
    .locals 2

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Lp5/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lp5/t;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lq5/i;->a:LE1/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, LT/T;

    return-object v0
.end method

.method public r(I)I
    .locals 3

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->u:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object p1

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized s(J)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, LC2/a;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, LC2/a;->p()Ljava/time/ZoneOffset;

    invoke-static {p1}, LC2/a;->o(Ljava/time/Instant;)Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-static {p1}, LC2/a;->n(Ljava/time/OffsetDateTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {}, LW3/h;->r()Ljava/time/format/DateTimeFormatter;

    invoke-static {p1}, LW3/h;->m(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public skip(J)J
    .locals 8

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    return-wide v1

    :cond_0
    move-wide v3, p1

    :goto_0
    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    :goto_1
    sub-long/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sub-long/2addr p1, v3

    return-wide p1
.end method

.method public t(I)I
    .locals 2

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->u:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object p1

    sget-object v1, Landroidx/leanback/widget/o;->c0:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/o;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v0, Landroidx/leanback/widget/o;->r:I

    if-nez p1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    return p1
.end method

.method public declared-synchronized u(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public v(IJ)V
    .locals 9

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, La1/d;

    const/16 v1, 0x5031

    const/4 v2, 0x0

    const-string v3, " not supported"

    if-eq p1, v1, :cond_13

    const/16 v1, 0x5032

    const-wide/16 v4, 0x1

    if-eq p1, v1, :cond_11

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->D:I

    return-void

    :pswitch_1
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->C:I

    return-void

    :pswitch_2
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    iput-boolean v8, p1, La1/c;->y:Z

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result p1

    if-eq p1, v1, :cond_14

    iget-object p2, v0, La1/d;->w:La1/c;

    iput p1, p2, La1/c;->z:I

    return-void

    :pswitch_3
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result p1

    if-eq p1, v1, :cond_14

    iget-object p2, v0, La1/d;->w:La1/c;

    iput p1, p2, La1/c;->A:I

    return-void

    :pswitch_4
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    long-to-int p1, p2

    if-eq p1, v8, :cond_1

    if-eq p1, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v8, p1, La1/c;->B:I

    return-void

    :cond_1
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v7, p1, La1/c;->B:I

    return-void

    :sswitch_0
    iput-wide p2, v0, La1/d;->t:J

    return-void

    :sswitch_1
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->e:I

    return-void

    :sswitch_2
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v6, p1, La1/c;->s:I

    return-void

    :cond_3
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v7, p1, La1/c;->s:I

    return-void

    :cond_4
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v8, p1, La1/c;->s:I

    return-void

    :cond_5
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v1, p1, La1/c;->s:I

    return-void

    :sswitch_3
    iput-wide p2, v0, La1/d;->T:J

    return-void

    :sswitch_4
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->Q:I

    return-void

    :sswitch_5
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    iput-wide p2, p1, La1/c;->T:J

    return-void

    :sswitch_6
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    iput-wide p2, p1, La1/c;->S:J

    return-void

    :sswitch_7
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->f:I

    return-void

    :sswitch_8
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    iput-boolean v8, p1, La1/c;->y:Z

    long-to-int p2, p2

    iput p2, p1, La1/c;->o:I

    return-void

    :sswitch_9
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    cmp-long p2, p2, v4

    if-nez p2, :cond_6

    move v1, v8

    :cond_6
    iput-boolean v1, p1, La1/c;->V:Z

    return-void

    :sswitch_a
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->q:I

    return-void

    :sswitch_b
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->r:I

    return-void

    :sswitch_c
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->p:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    invoke-virtual {v0, p1}, La1/d;->c(I)V

    if-eqz p2, :cond_a

    if-eq p2, v8, :cond_9

    if-eq p2, v6, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v6, p1, La1/c;->x:I

    return-void

    :cond_8
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v8, p1, La1/c;->x:I

    return-void

    :cond_9
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v7, p1, La1/c;->x:I

    return-void

    :cond_a
    iget-object p1, v0, La1/d;->w:La1/c;

    iput v1, p1, La1/c;->x:I

    return-void

    :sswitch_e
    iget-wide v1, v0, La1/d;->s:J

    add-long/2addr p2, v1

    iput-wide p2, v0, La1/d;->z:J

    return-void

    :sswitch_f
    cmp-long p1, p2, v4

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AESSettingsCipherMode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v4

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EBMLReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v4

    if-ltz p1, :cond_e

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DocTypeReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentCompAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_14
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->g:I

    return-void

    :sswitch_15
    iput-boolean v8, v0, La1/d;->S:Z

    return-void

    :sswitch_16
    iget-boolean v1, v0, La1/d;->G:Z

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, La1/d;->a(I)V

    iget-object p1, v0, La1/d;->F:LE1/t;

    invoke-virtual {p1, p2, p3}, LE1/t;->n(J)V

    iput-boolean v8, v0, La1/d;->G:Z

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, v0, La1/d;->R:I

    return-void

    :sswitch_18
    invoke-virtual {v0, p2, p3}, La1/d;->l(J)J

    move-result-wide p1

    iput-wide p1, v0, La1/d;->D:J

    return-void

    :sswitch_19
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->c:I

    return-void

    :sswitch_1a
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->n:I

    return-void

    :sswitch_1b
    invoke-virtual {v0, p1}, La1/d;->a(I)V

    iget-object p1, v0, La1/d;->E:LE1/t;

    invoke-virtual {v0, p2, p3}, La1/d;->l(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, LE1/t;->n(J)V

    return-void

    :sswitch_1c
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->m:I

    return-void

    :sswitch_1d
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->P:I

    return-void

    :sswitch_1e
    invoke-virtual {v0, p2, p3}, La1/d;->l(J)J

    move-result-wide p1

    iput-wide p1, v0, La1/d;->K:J

    return-void

    :sswitch_1f
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    cmp-long p2, p2, v4

    if-nez p2, :cond_10

    move v1, v8

    :cond_10
    iput-boolean v1, p1, La1/c;->W:Z

    return-void

    :sswitch_20
    invoke-virtual {v0, p1}, La1/d;->c(I)V

    iget-object p1, v0, La1/d;->w:La1/c;

    long-to-int p2, p2

    iput p2, p1, La1/c;->d:I

    return-void

    :cond_11
    cmp-long p1, p2, v4

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingScope "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_13
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_15

    :cond_14
    :goto_0
    return-void

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingOrder "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->N()V

    return-void
.end method
