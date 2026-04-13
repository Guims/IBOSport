.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Ly3/q;

.field public final b:Ly3/q;

.field public final c:Ly3/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lh4/c;->b:Ljava/util/Map;

    sget-object v1, Lh4/d;->b:Lh4/d;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SessionsDependencies"

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dependency "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Lh4/a;

    new-instance v4, Lu5/d;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lu5/d;-><init>(Z)V

    invoke-direct {v2, v4}, Lh4/a;-><init>(Lu5/d;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dependency to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly3/q;

    const-class v1, Lx3/a;

    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Ly3/q;

    new-instance v0, Ly3/q;

    const-class v1, Lx3/b;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Ly3/q;

    new-instance v0, Ly3/q;

    const-class v1, Lx3/c;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Ly3/q;

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 7

    const-class v0, LA3/e;

    invoke-static {v0}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v0

    const-string v1, "fire-cls"

    iput-object v1, v0, Ly3/a;->a:Ljava/lang/String;

    const-class v2, Lv3/e;

    invoke-static {v2}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    const-class v2, LY3/e;

    invoke-static {v2}, Ly3/i;->a(Ljava/lang/Class;)Ly3/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Ly3/q;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Ly3/q;

    invoke-direct {v2, v3, v4, v5}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Ly3/q;

    invoke-direct {v2, v3, v4, v5}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    const/4 v3, 0x2

    const-class v6, LB3/b;

    invoke-direct {v2, v5, v3, v6}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    const-class v6, Lw3/a;

    invoke-direct {v2, v5, v3, v6}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Ly3/i;

    const-class v6, Lf4/a;

    invoke-direct {v2, v5, v3, v6}, Ly3/i;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, LA3/d;

    const/4 v6, 0x0

    invoke-direct {v2, v6, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Ly3/a;->f:Ly3/d;

    iget v2, v0, Ly3/a;->d:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    iput v3, v0, Ly3/a;->d:I

    invoke-virtual {v0}, Ly3/a;->b()Ly3/b;

    move-result-object v0

    const-string v2, "19.4.3"

    invoke-static {v1, v2}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    filled-new-array {v0, v1}, [Ly3/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instantiation type has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
