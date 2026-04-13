.class public final Lg4/I;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lg4/I;

.field public static final b:LL2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg4/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/I;->a:Lg4/I;

    new-instance v0, LT3/d;

    invoke-direct {v0}, LT3/d;-><init>()V

    const-class v1, Lg4/H;

    sget-object v2, Lg4/g;->a:Lg4/g;

    invoke-virtual {v0, v1, v2}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const-class v1, Lg4/O;

    sget-object v2, Lg4/h;->a:Lg4/h;

    invoke-virtual {v0, v1, v2}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const-class v1, Lg4/k;

    sget-object v2, Lg4/e;->a:Lg4/e;

    invoke-virtual {v0, v1, v2}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const-class v1, Lg4/b;

    sget-object v2, Lg4/d;->a:Lg4/d;

    invoke-virtual {v0, v1, v2}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const-class v1, Lg4/a;

    sget-object v2, Lg4/c;->a:Lg4/c;

    invoke-virtual {v0, v1, v2}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const-class v1, Lg4/z;

    sget-object v2, Lg4/f;->a:Lg4/f;

    invoke-virtual {v0, v1, v2}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, LT3/d;->d:Z

    new-instance v1, LL2/o;

    invoke-direct {v1, v0}, LL2/o;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lg4/I;->b:LL2/o;

    return-void
.end method

.method public static a(Lv3/e;)Lg4/b;
    .locals 15

    invoke-virtual {p0}, Lv3/e;->a()V

    iget-object v0, p0, Lv3/e;->a:Landroid/content/Context;

    const-string v1, "firebaseApp.applicationContext"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    invoke-static {v1}, LB2/b;->c(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v8, Lg4/b;

    invoke-virtual {p0}, Lv3/e;->a()V

    iget-object v6, p0, Lv3/e;->c:Lv3/g;

    iget-object v9, v6, Lv3/g;->b:Ljava/lang/String;

    const-string v6, "firebaseApp.options.applicationId"

    invoke-static {v9, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "MODEL"

    invoke-static {v6, v7}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "RELEASE"

    invoke-static {v6, v7}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v2

    new-instance v2, Lg4/a;

    const-string v7, "packageName"

    invoke-static {v3, v7}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v4

    :cond_1
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v10, "MANUFACTURER"

    invoke-static {v7, v10}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv3/e;->a()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v0}, Lg4/s;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v6

    :cond_2
    if-ge v12, v11, :cond_3

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    move-object v14, v13

    check-cast v14, Lg4/z;

    iget v14, v14, Lg4/z;->b:I

    if-ne v14, v7, :cond_2

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    check-cast v13, Lg4/z;

    if-nez v13, :cond_7

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x21

    if-le v10, v11, :cond_4

    invoke-static {}, LB3/e;->g()Ljava/lang/String;

    move-result-object v5

    const-string v10, "myProcessName()"

    invoke-static {v5, v10}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-lt v10, v5, :cond_5

    invoke-static {}, LB2/b;->p()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, LB2/a;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    const-string v5, ""

    :goto_2
    new-instance v13, Lg4/z;

    invoke-direct {v13, v7, v6, v5, v6}, Lg4/z;-><init>(IILjava/lang/String;Z)V

    :cond_7
    move-object v6, v13

    invoke-virtual {p0}, Lv3/e;->a()V

    invoke-static {v0}, Lg4/s;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v5, v4

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lg4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg4/z;Ljava/util/ArrayList;)V

    invoke-direct {v8, v9, v2}, Lg4/b;-><init>(Ljava/lang/String;Lg4/a;)V

    return-object v8
.end method
