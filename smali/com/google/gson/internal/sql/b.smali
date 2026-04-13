.class public abstract Lcom/google/gson/internal/sql/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Lcom/google/gson/w;

.field public static final c:Lcom/google/gson/w;

.field public static final d:Lcom/google/gson/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/google/gson/internal/sql/b;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/gson/internal/sql/a;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v0, v3}, Lcom/google/gson/internal/sql/a;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lcom/google/gson/internal/sql/a;

    const-class v2, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/sql/a;-><init>(ILjava/lang/Class;)V

    sget-object v0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->b:Lcom/google/gson/w;

    sput-object v0, Lcom/google/gson/internal/sql/b;->b:Lcom/google/gson/w;

    sget-object v0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->b:Lcom/google/gson/w;

    sput-object v0, Lcom/google/gson/internal/sql/b;->c:Lcom/google/gson/w;

    sget-object v0, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->b:Lcom/google/gson/w;

    sput-object v0, Lcom/google/gson/internal/sql/b;->d:Lcom/google/gson/w;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gson/internal/sql/b;->b:Lcom/google/gson/w;

    sput-object v0, Lcom/google/gson/internal/sql/b;->c:Lcom/google/gson/w;

    sput-object v0, Lcom/google/gson/internal/sql/b;->d:Lcom/google/gson/w;

    :goto_1
    return-void
.end method
