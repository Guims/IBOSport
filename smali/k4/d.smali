.class public final Lk4/d;
.super Ljava/lang/Object;

# interfaces
.implements Lk4/m;


# instance fields
.field public final a:LY3/e;

.field public final b:Lg4/b;

.field public final c:Lk4/e;

.field public final d:Li4/a;

.field public final e:Lu5/d;


# direct methods
.method public constructor <init>(LV4/i;LY3/e;Lg4/b;Lk4/e;Li4/a;)V
    .locals 1

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "firebaseInstallationsApi"

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appInfo"

    invoke-static {p3, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "configsFetcher"

    invoke-static {p4, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "lazySettingsCache"

    invoke-static {p5, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk4/d;->a:LY3/e;

    iput-object p3, p0, Lk4/d;->b:Lg4/b;

    iput-object p4, p0, Lk4/d;->c:Lk4/e;

    iput-object p5, p0, Lk4/d;->d:Li4/a;

    invoke-static {}, Lu5/e;->a()Lu5/d;

    move-result-object p1

    iput-object p1, p0, Lk4/d;->e:Lu5/d;

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "replaceAll(...)"

    invoke-static {p0, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    iget-object v0, v0, Lk4/k;->b:Lk4/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk4/f;->a:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const-string v0, "sessionConfigs"

    invoke-static {v0}, Le5/g;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(LV4/d;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lk4/b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lk4/b;

    iget v3, v2, Lk4/b;->t:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lk4/b;->t:I

    goto :goto_0

    :cond_0
    new-instance v2, Lk4/b;

    check-cast v0, LX4/c;

    invoke-direct {v2, v1, v0}, Lk4/b;-><init>(Lk4/d;LX4/c;)V

    :goto_0
    iget-object v0, v2, Lk4/b;->r:Ljava/lang/Object;

    iget v3, v2, Lk4/b;->t:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "SessionConfigFetcher"

    const/4 v7, 0x2

    sget-object v8, LS4/i;->a:LS4/i;

    const/4 v9, 0x0

    sget-object v10, LW4/a;->b:LW4/a;

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v7, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lk4/b;->b:Ljava/lang/Object;

    check-cast v2, Lu5/a;

    :try_start_0
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lk4/b;->q:Lu5/a;

    iget-object v5, v2, Lk4/b;->b:Ljava/lang/Object;

    check-cast v5, Lk4/d;

    :try_start_1
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6

    :cond_3
    iget-object v3, v2, Lk4/b;->q:Lu5/a;

    iget-object v5, v2, Lk4/b;->b:Ljava/lang/Object;

    check-cast v5, Lk4/d;

    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v0, v1, Lk4/d;->e:Lu5/d;

    invoke-virtual {v0}, Lu5/d;->c()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lk4/d;->e()Lk4/k;

    move-result-object v3

    invoke-virtual {v3}, Lk4/k;->b()Z

    move-result v3

    if-nez v3, :cond_5

    return-object v8

    :cond_5
    iput-object v1, v2, Lk4/b;->b:Ljava/lang/Object;

    iput-object v0, v2, Lk4/b;->q:Lu5/a;

    iput v5, v2, Lk4/b;->t:I

    invoke-virtual {v0, v2}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v3, v0

    move-object v5, v1

    :goto_1
    :try_start_2
    invoke-virtual {v5}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    invoke-virtual {v0}, Lk4/k;->b()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Remote settings cache not expired. Using cached values."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    check-cast v3, Lu5/d;

    invoke-virtual {v3, v9}, Lu5/d;->f(Ljava/lang/Object;)V

    return-object v8

    :cond_7
    :try_start_3
    sget-object v0, Lg4/x;->c:Lg4/t;

    iget-object v11, v5, Lk4/d;->a:LY3/e;

    iput-object v5, v2, Lk4/b;->b:Ljava/lang/Object;

    iput-object v3, v2, Lk4/b;->q:Lu5/a;

    iput v7, v2, Lk4/b;->t:I

    invoke-virtual {v0, v11, v2}, Lg4/t;->a(LY3/e;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_8

    goto/16 :goto_4

    :cond_8
    :goto_2
    check-cast v0, Lg4/x;

    iget-object v0, v0, Lg4/x;->a:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v0, "Error getting Firebase Installation ID. Skipping this Session Event."

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    check-cast v3, Lu5/d;

    invoke-virtual {v3, v9}, Lu5/d;->f(Ljava/lang/Object;)V

    return-object v8

    :cond_9
    :try_start_4
    const-string v11, "X-Crashlytics-Installation-ID"

    new-instance v12, LS4/d;

    invoke-direct {v12, v11, v0}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-Device-Model"

    const-string v11, "%s/%s"

    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lk4/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, LS4/d;

    invoke-direct {v13, v0, v11}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-OS-Build-Version"

    sget-object v11, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v14, "INCREMENTAL"

    invoke-static {v11, v14}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lk4/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v14, LS4/d;

    invoke-direct {v14, v0, v11}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-OS-Display-Version"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v15, "RELEASE"

    invoke-static {v11, v15}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lk4/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, LS4/d;

    invoke-direct {v15, v0, v11}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-API-Client-Version"

    iget-object v11, v5, Lk4/d;->b:Lg4/b;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "2.1.1"

    new-instance v4, LS4/d;

    invoke-direct {v4, v0, v11}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v12, v13, v14, v15, v4}, [LS4/d;

    move-result-object v0

    new-instance v13, Ljava/util/LinkedHashMap;

    const/4 v4, 0x5

    invoke-static {v4}, LT4/s;->u(I)I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v13, v0}, LT4/s;->v(Ljava/util/LinkedHashMap;[LS4/d;)V

    const-string v0, "Fetching settings from server."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v5, Lk4/d;->c:Lk4/e;

    new-instance v14, Lk4/c;

    invoke-direct {v14, v5, v9}, Lk4/c;-><init>(Lk4/d;LV4/d;)V

    new-instance v15, LT/o;

    const/4 v0, 0x1

    invoke-direct {v15, v7, v9, v0}, LT/o;-><init>(ILV4/d;I)V

    iput-object v3, v2, Lk4/b;->b:Ljava/lang/Object;

    iput-object v9, v2, Lk4/b;->q:Lu5/a;

    const/4 v0, 0x3

    iput v0, v2, Lk4/b;->t:I

    iget-object v0, v12, Lk4/e;->b:LV4/i;

    new-instance v11, Lk4/c;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lk4/c;-><init>(Lk4/e;Ljava/util/LinkedHashMap;Lk4/c;LT/o;LV4/d;)V

    invoke-static {v0, v11, v2}, Lm5/w;->m(LV4/i;Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v10, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v8

    :goto_3
    if-ne v0, v10, :cond_b

    :goto_4
    return-object v10

    :cond_b
    move-object v2, v3

    :goto_5
    check-cast v2, Lu5/d;

    invoke-virtual {v2, v9}, Lu5/d;->f(Ljava/lang/Object;)V

    return-object v8

    :goto_6
    check-cast v2, Lu5/d;

    invoke-virtual {v2, v9}, Lu5/d;->f(Ljava/lang/Object;)V

    throw v0
.end method

.method public final c()Ll5/a;
    .locals 3

    invoke-virtual {p0}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    iget-object v0, v0, Lk4/k;->b:Lk4/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lk4/f;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget v1, Ll5/a;->s:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ll5/c;->s:Ll5/c;

    invoke-static {v0, v1}, La/a;->P(ILl5/c;)J

    move-result-wide v0

    new-instance v2, Ll5/a;

    invoke-direct {v2, v0, v1}, Ll5/a;-><init>(J)V

    return-object v2

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "sessionConfigs"

    invoke-static {v0}, Le5/g;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()Ljava/lang/Double;
    .locals 1

    invoke-virtual {p0}, Lk4/d;->e()Lk4/k;

    move-result-object v0

    iget-object v0, v0, Lk4/k;->b:Lk4/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk4/f;->b:Ljava/lang/Double;

    return-object v0

    :cond_0
    const-string v0, "sessionConfigs"

    invoke-static {v0}, Le5/g;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Lk4/k;
    .locals 2

    iget-object v0, p0, Lk4/d;->d:Li4/a;

    invoke-interface {v0}, Li4/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lazySettingsCache.get()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lk4/k;

    return-object v0
.end method
