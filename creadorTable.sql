-- Table: public.alumno

-- DROP TABLE IF EXISTS public.alumno;

CREATE TABLE IF NOT EXISTS public.alumno
(
    id_alumno integer NOT NULL DEFAULT nextval('"Alumno_id_alumno_seq"'::regclass),
    nombre text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    id_promocion integer,
    CONSTRAINT alumno_pkey PRIMARY KEY (id_alumno),
    CONSTRAINT fk_alumno FOREIGN KEY (id_promocion)
        REFERENCES public.promocion (id_promocion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.alumno
    OWNER to proyecto_fs_dt_user;


-- Table: public.aprobado

-- DROP TABLE IF EXISTS public.aprobado;

CREATE TABLE IF NOT EXISTS public.aprobado
(
    id_nota integer NOT NULL DEFAULT nextval('aprobado_id_nota_seq'::regclass),
    id_proyecto integer NOT NULL,
    apto text COLLATE pg_catalog."default",
    CONSTRAINT aprobado_pkey PRIMARY KEY (id_nota),
    CONSTRAINT id_proyecto FOREIGN KEY (id_proyecto)
        REFERENCES public.proyecto (id_proyecto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.aprobado
    OWNER to proyecto_fs_dt_user;

-- Table: public.campus

-- DROP TABLE IF EXISTS public.campus;

CREATE TABLE IF NOT EXISTS public.campus
(
    id_campus integer NOT NULL DEFAULT nextval('campus_id_campus_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    id_promocion integer,
    CONSTRAINT campus_pkey PRIMARY KEY (id_campus),
    CONSTRAINT fk_campus FOREIGN KEY (id_campus)
        REFERENCES public.promocion (id_promocion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.campus
    OWNER to proyecto_fs_dt_user;

-- Table: public.modalidad

-- DROP TABLE IF EXISTS public.modalidad;

CREATE TABLE IF NOT EXISTS public.modalidad
(
    id_modalidad integer NOT NULL DEFAULT nextval('modalidad_id_modalidad_seq'::regclass),
    nombre text COLLATE pg_catalog."default",
    hora_entrada text COLLATE pg_catalog."default",
    hora_salida text COLLATE pg_catalog."default",
    id_rama integer,
    CONSTRAINT modalidad_pkey PRIMARY KEY (id_modalidad),
    CONSTRAINT fk_idrama FOREIGN KEY (id_rama)
        REFERENCES public.rama (id_rama) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.modalidad
    OWNER to proyecto_fs_dt_user;

-- Table: public.profesor

-- DROP TABLE IF EXISTS public.profesor;

CREATE TABLE IF NOT EXISTS public.profesor
(
    id_profesor integer NOT NULL DEFAULT nextval('profesor_id_profesor_seq'::regclass),
    nombre text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    fecha_inicio_trabajo text COLLATE pg_catalog."default",
    fecha_fin text COLLATE pg_catalog."default",
    id_rol integer,
    id_rama integer,
    CONSTRAINT profesor_pkey PRIMARY KEY (id_profesor),
    CONSTRAINT fk_profesor FOREIGN KEY (id_rama)
        REFERENCES public.rama (id_rama) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_rol FOREIGN KEY (id_rol)
        REFERENCES public.rol (id_rol) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.profesor
    OWNER to proyecto_fs_dt_user;
-- Index: fki_i

-- DROP INDEX IF EXISTS public.fki_i;

CREATE INDEX IF NOT EXISTS fki_i
    ON public.profesor USING btree
    (id_rol ASC NULLS LAST)
    TABLESPACE pg_default;

-- Table: public.promocion

-- DROP TABLE IF EXISTS public.promocion;

CREATE TABLE IF NOT EXISTS public.promocion
(
    fecha_inicio text COLLATE pg_catalog."default",
    fecha_fin text COLLATE pg_catalog."default",
    npromocion text COLLATE pg_catalog."default",
    id_promocion integer NOT NULL DEFAULT nextval('promocion_id_promocion_seq'::regclass),
    id_rama integer,
    CONSTRAINT promocion_pkey PRIMARY KEY (id_promocion)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.promocion
    OWNER to proyecto_fs_dt_user;

-- Table: public.proyecto

-- DROP TABLE IF EXISTS public.proyecto;

CREATE TABLE IF NOT EXISTS public.proyecto
(
    id_proyecto integer NOT NULL DEFAULT nextval('proyecto_id_proyecto_seq'::regclass),
    nombre text COLLATE pg_catalog."default",
    descripcion text COLLATE pg_catalog."default",
    id_rama integer,
    CONSTRAINT proyecto_pkey PRIMARY KEY (id_proyecto),
    CONSTRAINT "FK_id_rama" FOREIGN KEY (id_rama)
        REFERENCES public.rama (id_rama) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.proyecto
    OWNER to proyecto_fs_dt_user;

-- Table: public.rama

-- DROP TABLE IF EXISTS public.rama;

CREATE TABLE IF NOT EXISTS public.rama
(
    id_rama integer NOT NULL DEFAULT nextval('"Rama_id_rama_seq"'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    CONSTRAINT "Rama_pkey" PRIMARY KEY (id_rama)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rama
    OWNER to proyecto_fs_dt_user;

-- Table: public.rol

-- DROP TABLE IF EXISTS public.rol;

CREATE TABLE IF NOT EXISTS public.rol
(
    id_rol integer NOT NULL DEFAULT nextval('rol_id_rol_seq'::regclass),
    nombre text COLLATE pg_catalog."default",
    descripcion text COLLATE pg_catalog."default",
    hora_entrada text COLLATE pg_catalog."default",
    hora_salida text COLLATE pg_catalog."default",
    CONSTRAINT rol_pkey PRIMARY KEY (id_rol)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rol
    OWNER to proyecto_fs_dt_user;

-- Table: public.t_asistencia

-- DROP TABLE IF EXISTS public.t_asistencia;

CREATE TABLE IF NOT EXISTS public.t_asistencia
(
    id_asistencia integer NOT NULL,
    nombre character varying COLLATE pg_catalog."default",
    id_rama integer,
    CONSTRAINT t_asistencia_pkey PRIMARY KEY (id_asistencia),
    CONSTRAINT fk_rama FOREIGN KEY (id_rama)
        REFERENCES public.rama (id_rama) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_asistencia
    OWNER to proyecto_fs_dt_user;

