.class public final Lg4/c;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Lg4/c;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/c;->a:Lg4/c;

    const-string v0, "packageName"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/c;->b:LR3/c;

    const-string v0, "versionName"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/c;->c:LR3/c;

    const-string v0, "appBuildVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/c;->d:LR3/c;

    const-string v0, "deviceManufacturer"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/c;->e:LR3/c;

    const-string v0, "currentProcessDetails"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/c;->f:LR3/c;

    const-string v0, "appProcessDetails"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/c;->g:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg4/a;

    check-cast p2, LR3/e;

    sget-object v0, Lg4/c;->b:LR3/c;

    iget-object v1, p1, Lg4/a;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/c;->c:LR3/c;

    iget-object v1, p1, Lg4/a;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/c;->d:LR3/c;

    iget-object v1, p1, Lg4/a;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/c;->e:LR3/c;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/c;->f:LR3/c;

    iget-object v1, p1, Lg4/a;->d:Lg4/z;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/c;->g:LR3/c;

    iget-object p1, p1, Lg4/a;->e:Ljava/util/ArrayList;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
