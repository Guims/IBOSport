.class public abstract Lf/o;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lf/n;

.field public static final q:I

.field public static r:LF/f;

.field public static s:LF/f;

.field public static t:Ljava/lang/Boolean;

.field public static u:Z

.field public static final v:Ln/f;

.field public static final w:Ljava/lang/Object;

.field public static final x:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf/n;

    new-instance v1, LL2/p;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LL2/p;-><init>(I)V

    invoke-direct {v0, v1}, Lf/n;-><init>(LL2/p;)V

    sput-object v0, Lf/o;->b:Lf/n;

    const/16 v0, -0x64

    sput v0, Lf/o;->q:I

    const/4 v0, 0x0

    sput-object v0, Lf/o;->r:LF/f;

    sput-object v0, Lf/o;->s:LF/f;

    sput-object v0, Lf/o;->t:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lf/o;->u:Z

    new-instance v1, Ln/f;

    invoke-direct {v1, v0}, Ln/f;-><init>(I)V

    sput-object v1, Lf/o;->v:Ln/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/o;->w:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/o;->x:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lf/o;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Lf/F;->b:I

    invoke-static {}, Lf/E;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lf/F;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lf/o;->t:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lf/o;->t:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Lf/o;->t:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Lf/A;)V
    .locals 3

    sget-object v0, Lf/o;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/o;->v:Ln/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ln/a;

    invoke-direct {v2, v1}, Ln/a;-><init>(Ln/f;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ln/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ln/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/o;

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v2}, Ln/a;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract f(I)Z
.end method

.method public abstract g(I)V
.end method

.method public abstract h(Landroid/view/View;)V
.end method

.method public abstract i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract j(Ljava/lang/CharSequence;)V
.end method
